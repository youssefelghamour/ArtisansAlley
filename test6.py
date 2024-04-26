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


for k, v in countries.items():
    country = Country(name=k)
    country.save()
    for city in v:
        city = City(name=city, country_id=country.id)
        city.save()

storage.save()

print("OK")
