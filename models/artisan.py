#!/usr/bin/python3
""" Artisan class """
from sqlalchemy import Column, String, event, ForeignKey, Table
from models.base_model import BaseModel, Base
from models.craft import Craft
from sqlalchemy.orm import relationship
from flask_login import UserMixin


artisan_craft = Table('artisan_craft', Base.metadata,
                          Column('artisan_id', String(60),
                                 ForeignKey('artisans.id'), primary_key=True,
                                 nullable=False),
                          Column('craft_id', String(60),
                                 ForeignKey('crafts.id'), primary_key=True,
                                 nullable=False))


class Artisan(BaseModel, Base, UserMixin):
    """ Artisan class """
    __tablename__ = 'artisans'

    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=False)
    email = Column(String(128), unique=True, nullable=False)
    password_hash = Column(String(128), nullable=False)
    picture = Column(String(1000), default="../static/images/avatar.png", nullable=False)
    city_id = Column(String(60), ForeignKey('cities.id'), nullable=False)
    crafts = relationship("Craft", secondary='artisan_craft',
                          viewonly=False, backref='artisan_crafts')
    products = relationship("Product", backref="artisan")
    
    
    @property
    def password(self):
        return self.password_hash

    @password.setter
    def password(self, text_password):
        from web_flask.flask_app import bcrypt
        self.password_hash = bcrypt.generate_password_hash(text_password).decode('utf-8')

    def check_password(self, password_to_check):
        from web_flask.flask_app import bcrypt
        return bcrypt.check_password_hash(self.password_hash, password_to_check)
        