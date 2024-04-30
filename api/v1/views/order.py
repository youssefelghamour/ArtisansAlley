#!/usr/bin/python3
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models import storage
from models.order import Order
from models.customer import Customer
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