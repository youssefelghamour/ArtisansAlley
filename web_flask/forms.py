from flask_wtf import FlaskForm
from models import storage
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired, Length, EqualTo, Email, ValidationError
from models.customer import Customer


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
