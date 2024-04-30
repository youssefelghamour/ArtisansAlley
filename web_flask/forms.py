from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, FileField
from wtforms.validators import DataRequired, Length, EqualTo, Email, ValidationError
from wtforms_sqlalchemy.fields import QuerySelectField
from models.country import Country
from models.city import City
from models.craft import Craft
from models.artisan import Artisan
from models.customer import Customer
from models import storage


class SignUpForm(FlaskForm):

    def validate_email(self, email_to_check):
        customers = storage.all(Customer).values()
        for customer in customers:
            if customer.email == email_to_check.data:
                raise ValidationError('Email Address already exists')

    first_name = StringField(label='first_name', validators=[DataRequired(), Length(min=2, max=30)])
    last_name = StringField(label='last_name', validators=[DataRequired(), Length(max=30)])
    email = StringField(label='email', validators=[DataRequired(), Email()])
    address = StringField(label='address', validators=[DataRequired(), Length(min=2, max=100)])
    password = PasswordField(label='password', validators=[DataRequired(), Length(min=6, max=40)])
    password2 = PasswordField(label='password2', validators=[EqualTo('password')])
    submit = SubmitField(label='Sign Up')


class SellWithUsForm(FlaskForm):

    def validate_email(self, email_to_check):
        artisans = storage.all(Artisan).values()
        for artisan in artisans:
            if artisan.email == email_to_check.data:
                raise ValidationError('Email Address already exists')

    name = StringField(label='Full Name', validators=[DataRequired(), Length(min=2, max=30)])
    email = StringField(label='email', validators=[DataRequired(), Email()])
    city = QuerySelectField('City', query_factory=lambda: storage.all(City).values(), get_label="name")
    country = QuerySelectField('Country', query_factory=lambda: storage.all(Country).values(), get_label="name")
    craft = QuerySelectField('Craft', query_factory=lambda: storage.all(Craft).values(), get_label="name")
    description = StringField('Description', validators=[DataRequired(), Length(min=2, max=600)])
    password = PasswordField(label='password', validators=[DataRequired(), Length(min=6, max=40)])
    password2 = PasswordField(label='password2', validators=[EqualTo('password')])
    picture = FileField('Picture', validators=[DataRequired()])
    submit = SubmitField(label='Sign Up')


class SignInForm(FlaskForm):
    email = StringField(label='Email:', validators=[DataRequired()])
    password = PasswordField(label='Password:', validators=[DataRequired()])
    submit = SubmitField(label='Sign In')