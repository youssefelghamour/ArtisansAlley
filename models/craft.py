#!/usr/bin/python3
''' Craft Class '''
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class Craft(BaseModel, Base):
    'Craft Class inherits from basemodel'

    __tablename__ = 'crafts'

    name = Column(String(128), nullable=False)
