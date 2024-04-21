#!/usr/bin/python3
''' Product Class '''
from sqlalchemy import String, Column, Integer, ForeignKey
from models.base_model import BaseModel, Base
from models.order import Order


class Product(BaseModel, Base):
    'product table'

    __tablename__ = 'products'

    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=False)
    price = Column(Integer, nullable=False, default=0)
    artisan_id = Column(String(60), ForeignKey('artisans.id'), nullable=False)
    craft_id = Column(String(60), ForeignKey('crafts.id'), nullable=False)
    
