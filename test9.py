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


customers = storage.all(Customer).values()

for customer in customers:
    for archive in customer.archives:
        for product in archive.products:
            print(archive, product)

print("all good")
