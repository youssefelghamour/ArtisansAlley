#!/usr/bin/python3
""" Artisan class """
from sqlalchemy import Column, String, event, ForeignKey, Table
from models.base_model import BaseModel, Base
from models.craft import Craft
from sqlalchemy.orm import relationship


artisan_craft = Table('artisan_craft', Base.metadata,
                          Column('artisan_id', String(60),
                                 ForeignKey('artisans.id'), primary_key=True,
                                 nullable=False),
                          Column('craft_id', String(60),
                                 ForeignKey('crafts.id'), primary_key=True,
                                 nullable=False))


class Artisan(BaseModel, Base):
    """ Artisan class """
    __tablename__ = 'artisans'

    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=False)
    city_id = Column(String(60), ForeignKey('cities.id'), nullable=False)
    crafts = relationship("Craft", secondary='artisan_craft',
                          viewonly=False, backref='artisan_crafts')
