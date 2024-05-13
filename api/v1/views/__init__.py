#!/usr/bin/python3
"""
Creates the blueprint for app_views
"""
from flask import Blueprint

app_views = Blueprint("app_views", __name__, url_prefix="/api/v1")

from api.v1.views.countries import *
from api.v1.views.cities import *
from api.v1.views.artisans import *
from api.v1.views.products import *
from api.v1.views.orders import *
from api.v1.views.reviews import *
from api.v1.views.archives import *