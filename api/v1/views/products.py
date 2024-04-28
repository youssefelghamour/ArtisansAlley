#!/usr/bin/python3
""" Products API Blueprint """
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models.product import Product
from models.artisan import Artisan
from models.craft import Craft
from models import storage
import json


@app_views.route('/products', methods=['GET'], strict_slashes=False)
def get_all_products():
    """ returns all products """
    products = []
    for product in storage.all(Product).values():
        products.append(product.to_dict())
    return jsonify(products)


@app_views.route('/products/<product_id>', methods=['GET'], strict_slashes=False)
def get_product(product_id):
    """ returns the product with the specified id """
    retrieved_product = storage.get(Product, product_id)
    if retrieved_product:
        return jsonify(retrieved_product.to_dict())
    else:
        abort(404)


@app_views.route('/products/<product_id>', methods=['DELETE'],
                 strict_slashes=False)
def delete_product(product_id):
    """ deletes a product with the sepcified id """
    retrieved_product = storage.get(Product, product_id)
    if retrieved_product:
        storage.delete(retrieved_product)
        storage.save()
        return make_response(jsonify({}), 200)
    else:
        abort(404)


@app_views.route('/artisans/<artisan_id>/products', methods=['POST'], strict_slashes=False)
def create_product(artisan_id):
    """ creates a new product for an artisan """
    # check if the artisan exists
    artisan = storage.get(Artisan, artisan_id)
    if artisan is None:
        abort(404)
    
    # check if data is a json
    try:
        product_dict = json.loads(request.data)
    except json.JSONDecodeError:
        abort(400, "Not a JSON")

    # check again if data is json, for good measure
    product_dict = request.get_json()
    if not product_dict:
        abort(400, "Not a JSON")

    # make sure all the attributes (that can't be null) exist
    if "name" not in product_dict.keys():
        abort(400, "Missing name")
    
    if "description" not in product_dict.keys():
        abort(400, "Missing description")
    
    if "price" not in product_dict.keys():
        abort(400, "Missing price")

    if "craft_id" not in product_dict.keys():
        abort(400, "Missing craft")

    # create and save the new Artisan instance
    product_dict['artisan_id'] = artisan_id
    new_product = Product(**product_dict)
    storage.new(new_product)
    storage.save()

    return make_response(jsonify(new_product.to_dict()), 201)


@app_views.route('/products/<product_id>', methods=['PUT'], strict_slashes=False)
def update_product(product_id):
    """ updates a product """
    product = storage.get(Product, product_id)

    # make sure the instance exists first
    if not product:
        abort(404)

    # check if data is json
    try:
        product_dict = json.loads(request.data)
    except json.JSONDecodeError:
        abort(400, "Not a JSON")

    product_dict = request.get_json()

    if not product_dict:
        abort(400, "Not a JSON")

    # update the instance
    for key, value in product_dict.items():
        if key not in ['id', 'created_at', 'updated_at']:
            setattr(product, key, value)

    storage.save()

    return make_response(jsonify(product.to_dict()), 200)


@app_views.route('/product_search', methods=['POST'], strict_slashes=False)
def products_search():
    """
    Retrieves all Product objects depending of the JSON in the body
    of the request
    """
    # check if the data in the requset i JSON
    if request.get_json() is None:
        abort(400, description="Not a JSON")

    # convert the data to a python dictionary
    data = request.get_json()

    # get the list of ids of the checked cities & crafts
    if data and len(data):
        crafts = data.get('crafts', None)

    # in case no city is selected, display all the artisans
    if not data or not len(data) or (
            not crafts):
        products = storage.all(Product).values()
        list_products = []
        for product in products:
            list_products.append(product.to_dict())
        return jsonify(list_products)

    list_products = []

    # get the products with the selected crafts
    if crafts:
        if not list_products:
            list_products = storage.all(Product).values()
        crafts_obj = [storage.get(Craft, c_id) for c_id in crafts]
        crafts_obj = [x.id for x in crafts_obj]
        list_products = [product for product in list_products
                       if product.craft_id in crafts_obj]

    products = []
    for prod in list_products:
        product_data = prod.to_dict()
        products.append(product_data)

    return jsonify(products)
