#!/usr/bin/python3
''' Archive Class '''
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String, ForeignKey, Table
from sqlalchemy.orm import relationship


archive_product = Table('archive_product', Base.metadata,
                          Column('archive_id', String(60),
                                 ForeignKey('archives.id'), primary_key=True,
                                 nullable=False),
                          Column('product_id', String(60),
                                 ForeignKey('products.id'), primary_key=True,
                                 nullable=False))


class Archive(BaseModel, Base):
    'archive table'

    __tablename__ = 'archives'

    customer_id = Column(String(60), ForeignKey('customers.id'), nullable=False)

    products = relationship("Product", secondary='archive_product',
                            viewonly=False, backref='archive_products')