#!/usr/bin/python3
""" Customer module """
from sqlalchemy import Column, String, ForeignKey
from models.base_model import BaseModel, Base
from sqlalchemy.orm import relationship


class Customer(BaseModel, Base):
    """ Customer class """
    __tablename__ = 'customers'

    first_name = Column(String(128), nullable=True)
    last_name = Column(String(128), nullable=True)
    email = Column(String(128), unique=True, nullable=False)
    password_hash = Column(String(128), nullable=False)
    address = Column(String(128), nullable=False)
    reviews = relationship("Review", cascade="all, delete-orphan",
                          backref="customer")


    @property
    def password(self):
        return self.password

    @password.setter
    def password(self, text_password):
        from web_flask.flask_app import bcrypt
        self.password_hash = bcrypt.generate_password_hash(text_password).decode('utf-8')
