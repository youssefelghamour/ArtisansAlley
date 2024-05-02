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
from models.engine.db_storage import DBStorage
from models import *


customer = storage.get(Customer, "53b47ae6-1fa3-475b-8ae5-913dcbc72f92")

product1 = storage.get(Product, "a5d26a44-e827-4eb9-8a90-56e4c63d147f")

review = Review(text="review 5", customer_id=customer.id, product_id=product1.id)
review.save()

storage.save()
print("all good")
