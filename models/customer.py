#!/usr/bin/python3
""" Customer module """
from sqlalchemy import Column, String, ForeignKey
from models.base_model import BaseModel, Base
from sqlalchemy.orm import relationship
from flask_login import UserMixin


class Customer(BaseModel, Base, UserMixin):
    """ Customer class """
    __tablename__ = 'customers'

    first_name = Column(String(128), nullable=True)
    last_name = Column(String(128), nullable=True)
    email = Column(String(128), unique=True, nullable=False)
    password_hash = Column(String(128), nullable=False)
    address = Column(String(128), nullable=False)
    reviews = relationship("Review", cascade="all, delete-orphan",
                          backref="customer")
    order = relationship("Order", uselist=False, backref="customer")
    archives = relationship("Archive", cascade="all, delete-orphan",
                          backref="customer")


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
