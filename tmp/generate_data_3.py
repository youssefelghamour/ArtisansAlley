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


# Initialize the storage engine
#storage = DBStorage()
#storage.reload()

# Create and save a country
country = Country(name="Morocco")
country.save()

# Create and save a city in Morocco
city = City(name="Fes", country_id=country.id)
city.save()

# Create and save an artisan in Fes
artisan_1 = Artisan(name="artisan_1", description="Some description", city_id=city.id)
artisan_1.save()
artisan_2 = Artisan(name="artisan_2", description="Some description", city_id=city.id)
artisan_2.save()

# Create and save a customer in Fes
customer = Customer(first_name="first", last_name="customer", email="fc@xx.com", password='123', address="98 st")
customer.save()

# creation of 3 various Crafts
craft_1 = Craft(name="woodwork")
craft_1.save()
craft_2 = Craft(name="pottery")
craft_2.save()
craft_3 = Craft(name="painting")
craft_3.save()

artisan_1.crafts.append(craft_1)
artisan_2.crafts.append(craft_2)

# creation of 2 products
product_1 = Product(name="door", artisan_id=artisan_1.id, craft_id=craft_1.id, price=100, description="some text")
product_1.save()
product_2 = Product(name="pot", artisan_id=artisan_2.id, craft_id=craft_2.id, price=50, description="some text")
product_2.save()

# Create a review for the products by the customer
review_1 = Review(text="the review for the first product1", customer_id=customer.id, product_id=product_1.id)
review_1.save()
review_2 = Review(text="the review for the second product1", customer_id=customer.id, product_id=product_2.id)
review_2.save()

# creation of 2 orders
order_1 = Order(customer_id=customer.id)
order_1.save()
order_2 = Order(customer_id=customer.id)
order_2.save()

order_1.products.append(product_1)
order_1.products.append(product_2)
order_1.save()
order_2.products.append(product_1)
order_2.save()

storage.save()

print("OK")
