#!/usr/bin/python3
'''create view for City objects that handles default RESTFul API actions'''
from models import storage
from models.country import Country
from models.city import City
from api.v1.views import app_views
from flask import jsonify, abort, request, make_response


@app_views.route('/countries/<country_id>/cities', methods=['GET'],
                 strict_slashes=False)
def get_cities(country_id):
    '''Retrieves the list of all City objects of a Country'''
    country = storage.get(Country, country_id)
    if country is None:
        abort(404)
    else:
        json_cities = []
        for city in country.cities:
            json_cities.append(city.to_dict())
        return jsonify(json_cities)


@app_views.route('/cities/<city_id>', methods=['GET'],
                 strict_slashes=False)
def get_city_by_id(city_id):
    'Retrieves a City object by its id or 404 not found'
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    else:
        return jsonify(city.to_dict())


@app_views.route('/cities/<city_id>', methods=['DELETE'],
                 strict_slashes=False)
def delete_city(city_id):
    'Deletes a City object'
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    else:
        for key, value in storage.all(City).items():
            if value == city:
                storage.delete(city)
                storage.save()
        return jsonify({}), 200


@app_views.route('/countries/<country_id>/cities', methods=['POST'],
                 strict_slashes=False)
def create_city(country_id):
    'Creates a City linked to a country'
    country = storage.get(Country, country_id)
    if country is None:
        abort(404)
    try:
        data = request.get_json()
    except Exception as e:
        abort(400, description="Not a JSON")
    if data is None:
        abort(400, description="Not a JSON")
    if "name" not in request.json:
        abort(400, description="Missing name")
    new_city = City(name="{}".format(request.get_json()['name']),
                    country_id=country_id)
    storage.new(new_city)
    storage.save()
    return jsonify(new_city.to_dict()), 201


@app_views.route('/cities/<city_id>', methods=['PUT'],
                 strict_slashes=False)
def update_city(city_id):
    'Updates a City object'
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    try:
        data = request.get_json()
    except Exception as e:
        abort(400, description="Not a JSON")
    if data is None:
        abort(400, description="Not a JSON")
    for key, value in request.get_json().items():
        if key not in ['id', 'state_id', 'created_at', 'updated_at']:
            setattr(city, key, value)
    storage.save()
    return jsonify(city.to_dict()), 200
