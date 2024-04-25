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
