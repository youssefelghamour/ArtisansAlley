#!/usr/bin/python3
from models.base_model import BaseModel, Base
from models.artisan import Artisan
from models.customer import Customer
from models.country import Country
from models.city import City
from models.review import Review
from models.engine.db_storage import DBStorage

# Initialize the storage engine
storage = DBStorage()
storage.reload()
"""
# Create and save a country
country = Country(name="Morocco")
country.save()

# Create and save a city in Morocco
city = City(name="Fes", country_id=country.id)
city.save()

# Create and save an artisan in Fes
artisan = Artisan(name="yyyyartisan", description="Some description", city_id=city.id)
artisan.save()

# Create and save a customer in Fes
customer = Customer(name="first customer", city_id=city.id)
customer.save()

# Create and save a review for the artisan by the customer
review = Review(text="the first review all good", customer_id=customer.id)
review.save()
"""
print("****************************************************************")

# Query and print all entities
print("Countries:\n")
for country in storage.all(Country).values():
    print(country)
    print("\n\t{}'s cities:".format(country.name))
    for city in country.cities:
        print("\t{}".format(city))

print("\n\n")
print("****************************************************************")

print("Cities:\n")
for city in storage.all(City).values():
    print(city)
    print("\n\tcustomers in {}".format(city.name))
    for customer in city.customers:
        print("\t{}".format(customer))
    print("\n\tartisans in {}".format(city.name))
    for artisan in city.artisans:
        print("\t{}".format(artisan))
    print("\n\t {} in {}".format(city.name, city.country.name))

print("\n\n")
print("****************************************************************")

print("Artisans:\n")
for artisan in storage.all(Artisan).values():
    print(artisan)
    print("\n\t{}'s city:".format(artisan.name))
    print("\t{}".format(artisan.city))

print("\n\n")
print("****************************************************************")

print("Customers:\n")
for customer in storage.all(Customer).values():
    print("customer:")
    print(customer)
    print("\n\t{}'s reviews:".format(customer.name))
    for review in customer.reviews:
        print("\t{}".format(review))
    print("\n\t{}'s city:".format(customer.name))
    print("\t{}".format(customer.city))

print("\n\n")
print("****************************************************************")

print("Reviews:\n")
for review in storage.all(Review).values():
    print(review)

