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

# ********************************************************************************************************************************************************
# ****************************************************************************
# Create countries and cities

# Saudi Arabia
country1 = Country(name="Saudi Arabia")
country1.save()

city1 = City(name="Riyadh", country_id=country1.id)
city1.save()

city2 = City(name="Jeddah", country_id=country1.id)
city2.save()

city3 = City(name="Mecca", country_id=country1.id)
city3.save()

city4 = City(name="Medina", country_id=country1.id)
city4.save()

city5 = City(name="Dammam", country_id=country1.id)
city5.save()

# United Arab Emirates
country2 = Country(name="United Arab Emirates")
country2.save()

city6 = City(name="Dubai", country_id=country2.id)
city6.save()

city7 = City(name="Abu Dhabi", country_id=country2.id)
city7.save()

city8 = City(name="Sharjah", country_id=country2.id)
city8.save()

city9 = City(name="Ajman", country_id=country2.id)
city9.save()

city10 = City(name="Fujairah", country_id=country2.id)
city10.save()

# Qatar
country3 = Country(name="Qatar")
country3.save()

city11 = City(name="Doha", country_id=country3.id)
city11.save()

city12 = City(name="Al Wakrah", country_id=country3.id)
city12.save()

city13 = City(name="Al Khor", country_id=country3.id)
city13.save()

city14 = City(name="Umm Salal", country_id=country3.id)
city14.save()

# Kuwait
country4 = Country(name="Kuwait")
country4.save()

city15 = City(name="Kuwait City", country_id=country4.id)
city15.save()

city16 = City(name="Hawalli", country_id=country4.id)
city16.save()

city17 = City(name="Salmiya", country_id=country4.id)
city17.save()

city18 = City(name="Jabriya", country_id=country4.id)
city18.save()

# Bahrain
country5 = Country(name="Bahrain")
country5.save()

city19 = City(name="Manama", country_id=country5.id)
city19.save()

city20 = City(name="Muharraq", country_id=country5.id)
city20.save()

city21 = City(name="Riffa", country_id=country5.id)
city21.save()

city22 = City(name="Hamad Town", country_id=country5.id)
city22.save()

# Oman
country6 = Country(name="Oman")
country6.save()

city23 = City(name="Muscat", country_id=country6.id)
city23.save()

city24 = City(name="Salalah", country_id=country6.id)
city24.save()

city25 = City(name="Sohar", country_id=country6.id)
city25.save()

city26 = City(name="Nizwa", country_id=country6.id)
city26.save()

# Yemen
country7 = Country(name="Yemen")
country7.save()

city27 = City(name="Sana'a", country_id=country7.id)
city27.save()

city28 = City(name="Aden", country_id=country7.id)
city28.save()

city29 = City(name="Taiz", country_id=country7.id)
city29.save()

city30 = City(name="Al Hudaydah", country_id=country7.id)
city30.save()

# Jordan
country8 = Country(name="Jordan")
country8.save()

city31 = City(name="Amman", country_id=country8.id)
city31.save()

city32 = City(name="Zarqa", country_id=country8.id)
city32.save()

city33 = City(name="Irbid", country_id=country8.id)
city33.save()

city34 = City(name="Aqaba", country_id=country8.id)
city34.save()

# Iraq
country9 = Country(name="Iraq")
country9.save()

city35 = City(name="Baghdad", country_id=country9.id)
city35.save()

city36 = City(name="Basra", country_id=country9.id)
city36.save()

city37 = City(name="Mosul", country_id=country9.id)
city37.save()

city38 = City(name="Erbil", country_id=country9.id)
city38.save()

# Lebanon
country10 = Country(name="Lebanon")
country10.save()

city39 = City(name="Beirut", country_id=country10.id)
city39.save()

city40 = City(name="Tripoli", country_id=country10.id)
city40.save()

city41 = City(name="Sidon", country_id=country10.id)
city41.save()

city42 = City(name="Tyre", country_id=country10.id)
city42.save()

# Syria
country11 = Country(name="Syria")
country11.save()

city43 = City(name="Damascus", country_id=country11.id)
city43.save()

city44 = City(name="Aleppo", country_id=country11.id)
city44.save()

city45 = City(name="Homs", country_id=country11.id)
city45.save()

city46 = City(name="Hama", country_id=country11.id)
city46.save()

# Palestine
country12 = Country(name="Palestine")
country12.save()

city47 = City(name="Jerusalem", country_id=country12.id)
city47.save()

city48 = City(name="Gaza", country_id=country12.id)
city48.save()

city49 = City(name="Ramallah", country_id=country12.id)
city49.save()

city50 = City(name="Hebron", country_id=country12.id)
city50.save()

# Egypt
country13 = Country(name="Egypt")
country13.save()

city51 = City(name="Cairo", country_id=country13.id)
city51.save()

city52 = City(name="Alexandria", country_id=country13.id)
city52.save()

city53 = City(name="Giza", country_id=country13.id)
city53.save()

city54 = City(name="Luxor", country_id=country13.id)
city54.save()

# Libya
country14 = Country(name="Libya")
country14.save()

city55 = City(name="Tripoli", country_id=country14.id)
city55.save()

city56 = City(name="Benghazi", country_id=country14.id)
city56.save()

city57 = City(name="Misrata", country_id=country14.id)
city57.save()

city58 = City(name="Sirte", country_id=country14.id)
city58.save()

# Tunisia
country15 = Country(name="Tunisia")
country15.save()

city59 = City(name="Tunis", country_id=country15.id)
city59.save()

city60 = City(name="Sfax", country_id=country15.id)
city60.save()

city61 = City(name="Sousse", country_id=country15.id)
city61.save()

city62 = City(name="Gabès", country_id=country15.id)
city62.save()

# Algeria
country16 = Country(name="Algeria")
country16.save()

city63 = City(name="Algiers", country_id=country16.id)
city63.save()

city64 = City(name="Oran", country_id=country16.id)
city64.save()

city65 = City(name="Constantine", country_id=country16.id)
city65.save()

city66 = City(name="Annaba", country_id=country16.id)
city66.save()

# Morocco
country17 = Country(name="Morocco")
country17.save()

city67 = City(name="Rabat", country_id=country17.id)
city67.save()

city68 = City(name="Casablanca", country_id=country17.id)
city68.save()

city69 = City(name="Marrakesh", country_id=country17.id)
city69.save()

city70 = City(name="Fez", country_id=country17.id)
city70.save()

# Sudan
country18 = Country(name="Sudan")
country18.save()

city71 = City(name="Khartoum", country_id=country18.id)
city71.save()

city72 = City(name="Omdurman", country_id=country18.id)
city72.save()

city73 = City(name="Port Sudan", country_id=country18.id)
city73.save()

city74 = City(name="Kassala", country_id=country18.id)
city74.save()

# Djibouti
country19 = Country(name="Djibouti")
country19.save()

city75 = City(name="Djibouti City", country_id=country19.id)
city75.save()

city76 = City(name="Ali Sabieh", country_id=country19.id)
city76.save()

city77 = City(name="Tadjoura", country_id=country19.id)
city77.save()

city78 = City(name="Obock", country_id=country19.id)
city78.save()

# Somalia
country20 = Country(name="Somalia")
country20.save()

city79 = City(name="Mogadishu", country_id=country20.id)
city79.save()

city80 = City(name="Hargeisa", country_id=country20.id)
city80.save()

city81 = City(name="Kismayo", country_id=country20.id)
city81.save()

city82 = City(name="Bosaso", country_id=country20.id)
city82.save()



# ********************************************************************************************************************************************************
# ****************************************************************************
# Create crafts


craft_names = [
    "Woodwork",
    "Ceramics",
    "Jewelry",
    "Metalwork",
    "Glass",
    "Weaving",
    "Leatherworking",
    "Basketry",
    "Tiles",
    "Sculpting",
    "Painting",
    "Calligraphy",
    "Pottery",
    "Engraving",
    "Weaving",
    "Furniture",
    "Rugs",
]

# for craft_name in craft_names:
#     craft = Craft(name=craft)
#     craft.save()

craft1 = Craft(name=craft_names[0])
craft1.save()

craft2 = Craft(name=craft_names[1])
craft2.save()

craft3 = Craft(name=craft_names[2])
craft3.save()

craft4 = Craft(name=craft_names[3])
craft4.save()

craft5 = Craft(name=craft_names[4])
craft5.save()

craft6 = Craft(name=craft_names[5])
craft6.save()

craft7 = Craft(name=craft_names[6])
craft7.save()

craft8 = Craft(name=craft_names[7])
craft8.save()

craft9 = Craft(name=craft_names[8])
craft9.save()

craft10 = Craft(name=craft_names[9])
craft10.save()

craft11 = Craft(name=craft_names[10])
craft11.save()

craft12 = Craft(name=craft_names[11])
craft12.save()

craft13 = Craft(name=craft_names[12])
craft13.save()

craft14 = Craft(name=craft_names[13])
craft14.save()

craft15 = Craft(name=craft_names[14])
craft15.save()

craft16 = Craft(name=craft_names[15])
craft16.save()

craft17 = Craft(name=craft_names[16])
craft17.save()



# ********************************************************************************************************************************************************
# ****************************************************************************
# Create an Artisan

artisan_info1 = {
    "name": "Ali Hassan",
    "description": "Skilled artisan with a passion for traditional craftsmanship",
    "email": "ali@example.com",
    "password": "password1",
    "city_id": city62.id
}

artisan1 = Artisan(**artisan_info1)
artisan1.crafts.append(craft6)
artisan1.crafts.append(craft9)
artisan1.save()

# ****************************************************************************
artisan_info2 = {
    "name": "Fatima Ahmed",
    "description": "Experienced artisan dedicated to creating unique works",
    "email": "fatima@example.com",
    "password": "password2",
    "city_id": city12.id
}

artisan2 = Artisan(**artisan_info2)
artisan2.crafts.append(craft1)
artisan2.crafts.append(craft15)
artisan2.save()

# ****************************************************************************
artisan_info3 = {
    "name": "Mohammed Khalil",
    "description": "Passionate craftsperson committed to the art of creation",
    "email": "mohammed@example.com",
    "password": "password3",
    "city_id": city2.id
}

artisan3 = Artisan(**artisan_info3)
artisan3.crafts.append(craft2)
artisan3.crafts.append(craft13)
artisan3.crafts.append(craft7)
artisan3.save()

# ****************************************************************************
artisan_info4 = {
    "name": "Layla Abbas",
    "description": "Master artisan known for their dedication to craftsmanship",
    "email": "layla@example.com",
    "password": "password4",
    "city_id": city23.id
}

artisan4 = Artisan(**artisan_info4)
artisan4.crafts.append(craft3)
artisan4.crafts.append(craft4)
artisan4.save()

# ****************************************************************************
artisan_info5 = {
    "name": "Hassan Ibrahim",
    "description": "Artisan with a keen eye for detail and a love for creativity",
    "email": "hassan@example.com",
    "password": "password5",
    "city_id": city49.id
}

artisan5 = Artisan(**artisan_info5)
artisan5.crafts.append(craft5)
artisan5.crafts.append(craft8)
artisan5.crafts.append(craft16)
artisan5.save()

# ****************************************************************************
artisan_info6 = {
    "name": "Aisha Kareem",
    "description": "Skilled maker dedicated to producing high-quality works of art",
    "email": "aisha@example.com",
    "password": "password6",
    "city_id": city11.id
}

artisan6 = Artisan(**artisan_info6)
artisan6.crafts.append(craft10)
artisan6.crafts.append(craft11)
artisan6.crafts.append(craft12)
artisan6.save()

# ****************************************************************************
artisan_info7 = {
    "name": "Youssef Nasser",
    "description": "Craftsman committed to craftsmanship and creativity",
    "email": "youssef@example.com",
    "password": "password7",
    "city_id": city22.id
}

artisan7 = Artisan(**artisan_info7)
artisan7.crafts.append(craft14)
artisan7.crafts.append(craft13)
artisan7.crafts.append(craft15)
artisan7.save()

# ****************************************************************************
artisan_info8 = {
    "name": "Nadia khalfaoui",
    "description": "Skilled artisan dedicated to producing quality handmade goods",
    "email": "nadia@example.com",
    "password": "password8",
    "city_id": city34.id
}

artisan8 = Artisan(**artisan_info8)
artisan8.crafts.append(craft16)
artisan8.crafts.append(craft17)
artisan8.save()

# ****************************************************************************
artisan_info9 = {
    "name": "Khaled Farouk",
    "description": "Passionate creator known for their dedication to their craft",
    "email": "khaled@example.com",
    "password": "password9",
    "city_id": city44.id
}

artisan9 = Artisan(**artisan_info9)
artisan9.crafts.append(craft1)
artisan9.save()

# ****************************************************************************
artisan_info10 = {
    "name": "Sara Mansour",
    "description": "Versatile artisan dedicated to excellence in their work",
    "email": "sara@example.com",
    "password": "password10",
    "city_id": city55.id
}

# craft = storage.get(Craft, "")
artisan10 = Artisan(**artisan_info10)
artisan10.crafts.append(craft1)
artisan10.crafts.append(craft12)
artisan10.crafts.append(craft9)
artisan10.save()

# ****************************************************************************
artisan_info11 = {
    "name": "Ahmed Taha",
    "description": "Artist full of passion and skill",
    "email": "ahmedt@example.com",
    "password": "password11",
    "city_id": city58.id
}

# craft = storage.get(Craft, "")
artisan11 = Artisan(**artisan_info11)
artisan11.crafts.append(craft1)
artisan11.crafts.append(craft7)
artisan11.crafts.append(craft2)
artisan11.save()


# ********************************************************************************************************************************************************
# ****************************************************************************
# Add Products to the Artisan's Shop Manually

# Products for Artisan 1 (Ali Hassan) - Crafts: Weaving, Tiles
product1 = Product(name="Handwoven Wool Rug", description="Traditional handwoven wool rug with geometric patterns", price=200, artisan_id=artisan1.id, craft_id=craft6.id)
product1.save()

product2 = Product(name="Hand-painted Ceramic Tile", description="Handcrafted ceramic tile painted with intricate floral motifs", price=15, artisan_id=artisan1.id, craft_id=craft9.id)
product2.save()

# Products for Artisan 2 (Fatima Ahmed) - Crafts: Woodwork, Rugs
product3 = Product(name="Hand-carved Wooden Bowl", description="Beautifully hand-carved wooden bowl made from sustainable teak wood", price=50, artisan_id=artisan2.id, craft_id=craft1.id)
product3.save()

# Products for Artisan 3 (Mohammed Khalil) - Crafts: Ceramics, Engraving, Leatherworking
product4 = Product(name="Handcrafted Ceramic Vase", description="Elegant handcrafted ceramic vase with intricate blue glaze", price=80, artisan_id=artisan3.id, craft_id=craft2.id)
product4.save()

product5 = Product(name="Tea Cups", description="A beautiful set of handmade tea cups", price=40, artisan_id=artisan3.id, craft_id=craft13.id)
product5.save()

product6 = Product(name="Hand-tooled Leather Belt", description="Stylish hand-tooled leather belt with floral patterns", price=60, artisan_id=artisan3.id, craft_id=craft7.id)
product6.save()

# Products for Artisan 4 (Layla Abbas) - Crafts: Jewelry, Metalwork
product7 = Product(name="Sterling Silver Pendant Necklace", description="Elegant sterling silver pendant necklace with natural gemstone", price=120, artisan_id=artisan4.id, craft_id=craft3.id)
product7.save()

product8 = Product(name="Hand-forged Iron Candle Holder", description="Hand-forged iron candle holder with intricate scrollwork", price=80, artisan_id=artisan4.id, craft_id=craft4.id)
product8.save()

# Products for Artisan 5 (Hassan Ibrahim) - Crafts: Glass, Basketry, Painting
product9 = Product(name="Stained Glass Window Panel", description="Colorful stained glass window panel with floral design", price=180, artisan_id=artisan5.id, craft_id=craft5.id)
product9.save()

product10 = Product(name="Handwoven Seagrass Basket", description="Handwoven seagrass basket with lid, perfect for storage", price=50, artisan_id=artisan5.id, craft_id=craft8.id)
product10.save()

# Products for Artisan 6 (Aisha Kareem) - Crafts: Sculpting, Painting, Calligraphy
product11 = Product(name="Hand-carved Stone Sculpture", description="Intricately hand-carved stone sculpture of a lion", price=300, artisan_id=artisan6.id, craft_id=craft10.id)
product11.save()

product12 = Product(name="Islamic Calligraphy Art", description="Elegant Islamic calligraphy artwork with gold leaf accents", price=150, artisan_id=artisan6.id, craft_id=craft12.id)
product12.save()

# Products for Artisan 7 (Youssef Nasser) - Crafts: Engraving, Leatherworking
product13 = Product(name="Hand-engraved Metal Flask", description="Custom hand-engraved stainless steel flask with intricate design", price=50, artisan_id=artisan7.id, craft_id=craft14.id)
product13.save()

product14 = Product(name="Handwoven Cotton Hammock", description="Comfortable handwoven cotton hammock with fringe detailing", price=35, artisan_id=artisan7.id, craft_id=craft15.id)
product14.save()

# Products for Artisan 8 (Nadia khalfaoui) - Crafts: Weaving, Furniture
product15 = Product(name="Handcrafted Leather Journal", description="High-quality handcrafted leather journal with embossed cover", price=120, artisan_id=artisan8.id, craft_id=craft16.id)
product15.save()

product16 = Product(name="Persian Rug", description="Beautiful Persian that adds warmth in your house charm", price=250, artisan_id=artisan8.id, craft_id=craft17.id)
product16.save()

# Products for Artisan 9 (Khaled Farouk) - Crafts: Woodwork
product17 = Product(name="Hand-carved Wooden Serving Tray", description="Elegant hand-carved wooden serving tray with intricate floral design", price=40, artisan_id=artisan9.id, craft_id=craft1.id)
product17.save()

# Products for Artisan 10 (Sara Mansour) - Crafts: Woodwork, Calligraphy
product18 = Product(name="Hand-carved Wooden Jewelry Box", description="Exquisite hand-carved wooden jewelry box with floral motifs", price=60, artisan_id=artisan10.id, craft_id=craft1.id)
product18.save()

product19 = Product(name="Custom Arabic Calligraphy Canvas", description="Personalized Arabic calligraphy canvas with name or phrase of choice", price=80, artisan_id=artisan10.id, craft_id=craft12.id)
product19.save()

# Products for Artisan 11 (Ahmed Taha) - Crafts: Woodwork, Leatherworking
product20 = Product(name="Handcrafted Wooden Serving Platter", description="Beautiful handcrafted wooden serving platter with natural wood grain", price=50, artisan_id=artisan11.id, craft_id=craft1.id)
product20.save()

product21 = Product(name="Hand-tooled Leather Keychain", description="Stylish hand-tooled leather keychain with durable metal hardware", price=20, artisan_id=artisan11.id, craft_id=craft7.id)
product21.save()


storage.save()

print("Process completed")

