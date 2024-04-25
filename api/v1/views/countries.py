#!/usr/bin/python3
""" Countries API Blueprint """
from api.v1.views import app_views
from flask import jsonify, abort, make_response, request
from models.country import Country
from models import storage
import json

@app_views.route('/countries', methods=['GET'], strict_slashes=False)
def get_all_countries():
    """ returns all countries """
    countries = []
    for country in storage.all(Country).values():
        countries.append(country.to_dict())
    return jsonify(countries)


@app_views.route('/countries/<country_id>', methods=['GET'], strict_slashes=False)
def get_country(country_id):
    """ returns the country with the specified id """
    retrieved_country = storage.get(Country, country_id)
    if retrieved_country:
        return jsonify(retrieved_country.to_dict())
    else:
        abort(404)


@app_views.route('/countries/<country_id>', methods=['DELETE'],
                 strict_slashes=False)
def delete_country(country_id):
    """ deletes a country with the sepcified id """
    retrieved_country = storage.get(Country, country_id)
    if retrieved_country:
        storage.delete(retrieved_country)
        storage.save()
        return make_response(jsonify({}), 200)
    else:
        abort(404)


@app_views.route('/countries/', methods=['POST'], strict_slashes=False)
def create_country():
    """ creates a new country """
    try:
        country_dict = json.loads(request.data)
    except json.JSONDecodeError:
        abort(400, "Not a JSON")

    country_dict = request.get_json()

    if not country_dict:
        abort(400, "Not a JSON")

    if "name" not in country_dict.keys():
        abort(400, "Missing name")

    new_country = Country(**country_dict)
    storage.new(new_country)
    storage.save()

    return make_response(jsonify(new_country.to_dict()), 201)


@app_views.route('/countries/<country_id>', methods=['PUT'], strict_slashes=False)
def update_country(country_id):
    """ updates a country """
    country = storage.get(Country, country_id)

    if not country:
        abort(404)

    try:
        country_dict = json.loads(request.data)
    except json.JSONDecodeError:
        abort(400, "Not a JSON")

    country_dict = request.get_json()

    if not country_dict:
        abort(400, "Not a JSON")

    for key, value in country_dict.items():
        if key not in ['id', 'created_at', 'updated_at']:
            setattr(country, key, value)

    storage.save()

    return make_response(jsonify(country.to_dict()), 200)
