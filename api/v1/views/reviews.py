#!/usr/bin/python3
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models import storage
from models.review import Review
from models.customer import Customer
from models.product import Product
import json


@app_views.route('/reviews/<product_id>', methods=['GET'], strict_slashes=False)
def get_reviews_of_product(product_id):
    'get all reviews for a specific product'
    reviews = storage.all(Review).values()
    product_reviews = []
    for review in reviews:
        if review.product_id == product_id:
            review_dict = review.to_dict()
            customer = storage.get(Customer, review.customer_id)
            review_dict["customer_name"] = customer.first_name + " " + customer.last_name
            product_reviews.append(review_dict)
    return jsonify(product_reviews)


@app_views.route('/reviews/<product_id>', methods=['POST'], strict_slashes=False)
def create_review(product_id):
    'create new review for a product'
    product = storage.get(Product, product_id)
    if not product:
        abort(404)
    try:
        req_data = json.loads(request.data)
    except:
        abort(400, "Not a JSON")

    req_data = request.get_json()
    if not req_data:
        abort(400, "Not a JSON")
    
    if "text" not in req_data.keys():
        abort(400, "Missing text")

    if "customer_id" not in req_data.keys():
        abort(400, "Missing customer_id")

    req_data['product_id'] = product_id
    new_review = Review(**req_data)
    storage.new(new_review)

    storage.save()

    return make_response(jsonify(new_review.to_dict()), 201)
