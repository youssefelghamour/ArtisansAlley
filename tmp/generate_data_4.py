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
"""
artisans_data = [
    {"name": "Artisan1", "description": "Description1", "email": "artisan1@example.com", "password": "password1", "city_id": "20956c78-2a65-478b-af3e-72545c458492"},
    {"name": "Artisan2", "description": "Description2", "email": "artisan2@example.com", "password": "password2", "city_id": "24523026-5267-423c-aa6f-b2a23b2aa12e"}
]

new_artisan = Artisan(**artisans_data[0])
new_artisan.save()
craft = storage.get(Craft, "0c87cff9-5b56-4d38-a59c-57fc16745dab")
new_artisan.crafts.append(craft)
new_artisan.save()

new_artisan = Artisan(**artisans_data[1])
new_artisan.save()
craft = storage.get(Craft, "12a2140d-7850-4830-a8cb-df91c810164d")
new_artisan.crafts.append(craft)
new_artisan.save()
"""
artisans_data = [
    {"name": "Artisan3", "description": "Description3", "email": "artisan3@example.com", "password": "password3", "city_id": "24523026-5267-423c-aa6f-b2a23b2aa12e"}
]

new_artisan = Artisan(**artisans_data[0])
new_artisan.save()
craft1 = storage.get(Craft, "0c87cff9-5b56-4d38-a59c-57fc16745dab")
new_artisan.crafts.append(craft1)
craft2 = storage.get(Craft, "12a2140d-7850-4830-a8cb-df91c810164d")
new_artisan.crafts.append(craft2)
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
