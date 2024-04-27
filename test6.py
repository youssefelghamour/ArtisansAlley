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


# ****************************************************************************
# Create countries and cities

countries = {
    "Saudi Arabia": ["Riyadh", "Jeddah", "Mecca", "Medina", "Dammam"],
    "United Arab Emirates": ["Dubai", "Abu Dhabi", "Sharjah", "Ajman", "Fujairah"],
    "Qatar": ["Doha", "Al Wakrah", "Al Khor", "Umm Salal"],
    "Kuwait": ["Kuwait City", "Hawalli", "Salmiya", "Jabriya"],
    "Bahrain": ["Manama", "Muharraq", "Riffa", "Hamad Town"],
    "Oman": ["Muscat", "Salalah", "Sohar", "Nizwa"],
    "Yemen": ["Sana'a", "Aden", "Taiz", "Al Hudaydah"],
    "Jordan": ["Amman", "Zarqa", "Irbid", "Aqaba"],
    "Iraq": ["Baghdad", "Basra", "Mosul", "Erbil"],
    "Lebanon": ["Beirut", "Tripoli", "Sidon", "Tyre"],
    "Syria": ["Damascus", "Aleppo", "Homs", "Hama"],
    "Palestine": ["Jerusalem", "Gaza", "Ramallah", "Hebron"],
    "Egypt": ["Cairo", "Alexandria", "Giza", "Luxor"],
    "Libya": ["Tripoli", "Benghazi", "Misrata", "Sirte"],
    "Tunisia": ["Tunis", "Sfax", "Sousse", "Gabès"],
    "Algeria": ["Algiers", "Oran", "Constantine", "Annaba"],
    "Morocco": ["Rabat", "Casablanca", "Marrakesh", "Fez"],
    "Sudan": ["Khartoum", "Omdurman", "Port Sudan", "Kassala"],
    "Djibouti": ["Djibouti City", "Ali Sabieh", "Tadjoura", "Obock"],
    "Somalia": ["Mogadishu", "Hargeisa", "Kismayo", "Bosaso"]
}

"""
for k, v in countries.items():
    country = Country(name=k)
    country.save()
    for city in v:
        city = City(name=city, country_id=country.id)
        city.save()
"""

# ****************************************************************************
# Create Artisans

artisans_data = [
    {"name": "Artisan1", "description": "Description1", "email": "artisan1@example.com", "password": "password1", "city_id": "ddde22a5-a672-427f-b09a-ae68d5b711ed"},
    {"name": "Artisan2", "description": "Description2", "email": "artisan2@example.com", "password": "password2", "city_id": "e5004cf3-b958-414d-b74b-4a898b1ad692"}
]

new_artisan = Artisan(**artisans_data[0])
new_artisan.save()
craft = storage.get(Craft, "35160659-24a7-4eac-91d4-4ca937f39beb")
new_artisan.crafts.append(craft)
new_artisan.save()

new_artisan = Artisan(**artisans_data[1])
new_artisan.save()
craft = storage.get(Craft, "4f655db6-d774-46cf-93cb-9a32ec1d1238")
new_artisan.crafts.append(craft)
new_artisan.save()


# *******************************************************************************
# create Crafts

crafts = ["Rugs", "Carpentry", "Pottery", "Jewellery", "Metal Crafts", "Glass Crafts", "Painting", "Paper Crafts", "Woodworking", "Sewing", "Leatherworking"]

"""
for craftName in crafts:
    craft = Craft(name=craftName)
    craft.save()
"""


storage.save()

print("OK")
