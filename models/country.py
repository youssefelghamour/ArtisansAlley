#!/usr/bin/python3
""" Country module """
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship
from models.base_model import BaseModel, Base
from models.city import City
import models


class Country(BaseModel, Base):
    """ Country class """
    __tablename__ = "countries"

    name = Column(String(128), nullable=False)
    cities = relationship("City", cascade="all, delete-orphan",
                          backref="country")
