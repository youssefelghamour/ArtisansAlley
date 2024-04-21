#!/usr/bin/python3
''' Order Class '''
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String, ForeignKey, Table
from sqlalchemy.orm import relationship


order_product = Table('order_product', Base.metadata,
                          Column('order_id', String(60),
                                 ForeignKey('orders.id'), primary_key=True,
                                 nullable=False),
                          Column('product_id', String(60),
                                 ForeignKey('products.id'), primary_key=True,
                                 nullable=False))


class Order(BaseModel, Base):
    'order table'

    __tablename__ = 'orders'

    customer_id = Column(String(60), ForeignKey('customers.id'), nullable=False)

    products = relationship("Product", secondary='order_product',
                            viewonly=False, backref='order_products')
