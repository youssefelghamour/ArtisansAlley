#!/usr/bin/python3
from models.base_model import BaseModel, Base
from models.artisan import Artisan
from models.customer import Customer
from models.country import Country
from models.city import City
from models.review import Review
from models.craft import Craft
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
customer = Customer(name="first customer", city_id=city.id)
customer.save()

# Create and save a review for the artisan by the customer
review = Review(text="the first review all good", customer_id=customer.id)
review.save()

# creation of 3 various Crafts
craft_1 = Craft(name="woodwork")
craft_1.save()
craft_2 = Craft(name="pottery")
craft_2.save()
craft_3 = Craft(name="painting")
craft_3.save()

artisan_1.crafts.append(craft_1)
artisan_2.crafts.append(craft_2)

storage.save()

print("OK")
