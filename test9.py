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


customer = storage.get(Customer, "d1f41d8e-2413-4837-89c9-f2c98d1fc925")

product1 = storage.get(Product, "e0b56407-49db-4530-badb-afffe2c909cd")
product2 = storage.get(Product, "db15dea2-2ff8-4380-96fa-f97911138ae9")
# customer.order = Order(customer_id = "d1f41d8e-2413-4837-89c9-f2c98d1fc925")
customer.order.products.append(product1)
customer.order.products.append(product2)

# print(customer.order)


storage.save()
print("all good")