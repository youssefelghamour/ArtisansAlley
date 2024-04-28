from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired, Length, EqualTo, Email


class SignUpForm(FlaskForm):
    first_name = StringField(label='first_name', validators=[DataRequired(), Length(min=2, max=30)])
    last_name = StringField(label='last_name', validators=[Length(max=30)])
    email = StringField(label='email', validators=[DataRequired(), Email()])
    address = StringField(label='address', validators=[DataRequired(), Length(min=2, max=100)])
    password = PasswordField(label='password', validators=[DataRequired(), Length(min=6, max=40)])
    password2 = PasswordField(label='password2', validators=[EqualTo('password')])
    submit = SubmitField(label='Sign Up')