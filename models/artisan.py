#!/usr/bin/python3
""" Artisan class """
from sqlalchemy import Column, String, event, ForeignKey
from models.base_model import BaseModel, Base
from sqlalchemy.orm import relationship


class Artisan(BaseModel, Base):
    """ Artisan class """
    __tablename__ = 'users'

    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=False)
    city_id = Column(String(60), ForeignKey('cities.id'), nullable=False)
