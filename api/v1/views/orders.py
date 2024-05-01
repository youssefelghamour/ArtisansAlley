#!/usr/bin/python3
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models import storage
from models.order import Order
from models.customer import Customer
from models.product import Product
from web_flask.flask_app import current_user


@app_views.route('/orders', methods=['GET'], strict_slashes=False)
def get_all_orders():
    orders = []
    for order in storage.all(Order).values():
        orders.append(order.to_dict())
    return jsonify(orders)


@app_views.route('/orders/<order_id>', methods=['GET'], strict_slashes=False)
def get_order(order_id):
    retrieved_order = storage.get(Order, order_id)
    if retrieved_order:
        return jsonify(retrieved_order.to_dict())
    else:
        abort(404)


@app_views.route('/orders/<order_id>/products', methods=['GET'], strict_slashes=False)
def get_products(order_id):
    order = storage.get(Order, order_id)
    if order:
        products = []
        for product in order.products:
            products.append(product.to_dict())
        return jsonify(products)
    else:
        abort(404)


@app_views.route('/orders/<order_id>/products/<product_id>',
                 methods=['DELETE'], strict_slashes=False)
def delete_order_product(order_id, product_id):
    """ deletes a link between an order and a product
        removes a certain product from a certain order
    """
    order = storage.get(Order, order_id)
    if not order:
        abort(404)

    product = storage.get(Product, product_id)
    if not product:
        abort(404)

    if product not in order.products:
        abort(404)

    order.products.remove(product)

    storage.save()
    return make_response(jsonify({}), 200)


@app_views.route('/orders/<order_id>/product/<product_id>',
                 methods=['POST'], strict_slashes=False)
def add_order_product(order_id, product_id):
    """ adds a link between an order and a product
        customer.orders will now contain this product
    """
    order = storage.get(Order, order_id)
    if not order:
        abort(404)

    product = storage.get(Product, product_id)
    if not product:
        abort(404)

    if product in order.products:
        abort(404)

    order.products.append(product)

    storage.save()
    return make_response(jsonify({}), 200)