#!/usr/bin/python3
""" City module """
from sqlalchemy import Column, String, ForeignKey
from models.base_model import BaseModel, Base
from sqlalchemy.orm import relationship


class City(BaseModel, Base):
    """ city class """
    __tablename__ = "cities"

    name = Column(String(128), nullable=False)
    country_id = Column(String(60), ForeignKey('countries.id'), nullable=False)
    artisans = relationship("Artisan", cascade="all, delete-orphan",
                          backref="city")
