#!/usr/bin/python3
""" Archives API Blueprint """
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models.artisan import Artisan
from models.archive import Archive
from models.customer import Customer
from models import storage
import json


@app_views.route('/archives/<artisan_id>', methods=['GET'], strict_slashes=False)
def get_artisan_orders(artisan_id):
    """ returns the products that have been ordered from the artisan """
    retrieved_artisan = storage.get(Artisan, artisan_id)
    if retrieved_artisan is None:
        abort(404)
    
    lst_products = []
    archives = storage.all(Archive).values()
    if archives:
        for archive in archives:
            customer = storage.get(Customer, archive.customer_id)
            if customer:
                customer_details = {
                    'first_name': customer.first_name,
                    'last_name': customer.last_name,
                    'address': customer.address
                }
            for product in archive.products:
                if product in retrieved_artisan.products:
                    product_info = product.to_dict()
                    product_info['customer'] = customer_details
                    product_info['date'] = archive.updated_at
                    lst_products.append(product_info)

        
    if not lst_products:
        return jsonify([])
    
    return jsonify(lst_products)


@app_views.route('/customer_archives/<customer_id>', methods=['GET'], strict_slashes=False)
def get_customer_orders(customer_id):
    """ returns the products that have been ordered by the customer """
    retrieved_customer = storage.get(Customer, customer_id)
    if retrieved_customer is None:
        abort(404)
    
    lst_products = []
    for archive in retrieved_customer.archives:
        for product in archive.products:
            product_info = product.to_dict()
            product_info['date'] = archive.updated_at
            lst_products.append(product_info)

        
    if not lst_products:
        return jsonify([])
    
    return jsonify(lst_products)