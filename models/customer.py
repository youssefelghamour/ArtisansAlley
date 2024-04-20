#!/usr/bin/python3
""" State module """
from sqlalchemy import Column, String, ForeignKey
from models.base_model import BaseModel, Base
from sqlalchemy.orm import relationship


class Customer(BaseModel, Base):
    """ Customer class """
    __tablename__ = 'customers'

    name = Column(String(128), nullable=True)
    city_id = Column(String(60), ForeignKey('cities.id'), nullable=False)
    reviews = relationship("Review", cascade="all, delete-orphan",
                          backref="customer")
