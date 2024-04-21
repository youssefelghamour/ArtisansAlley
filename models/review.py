#!/usr/bin/python3
""" Review module """
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String, ForeignKey
from models.product import Product


class Review(BaseModel, Base):
    """ Review class """
    __tablename__ = "reviews"

    text = Column(String(1024), nullable=False)
    customer_id = Column(String(60), ForeignKey('customers.id'), nullable=False)
    product_id = Column(String(60), ForeignKey('products.id'), nullable=False)
