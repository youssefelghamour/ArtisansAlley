#!/usr/bin/python3
from models.base_model import BaseModel, Base
from models.artisan import Artisan
from models.customer import Customer
from models.country import Country
from models.city import City
from models.product import Product
from models.review import Review
from models.craft import Craft
from models.order import Order
from models.archive import Archive
from models.engine.db_storage import DBStorage
from models import *


archive = storage.get(Archive, "e230761d-1e9c-4e8f-be6f-1757c6ec7c39")

print(archive.products[0].status)

print("all good")
