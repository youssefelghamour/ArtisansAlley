#!/usr/bin/python3
""" Flask app """
from flask import Flask, render_template, redirect, url_for
from models import storage
from models.artisan import Artisan
from models.customer import Customer
from models.country import Country
from models.city import City
from models.product import Product
from models.review import Review
from models.craft import Craft
from models.order import Order
from .forms import SignUpForm


app = Flask(__name__)
app.config['SECRET_KEY'] = 'just a random key'


@app.teardown_appcontext
def app_teardown(exception):
    """ closes sql alchemy session after each request """
    storage.close()


@app.route('/', strict_slashes=False)
def home():
    """ displays the home page """
    return render_template('home.html')


@app.route('/sell_with_us', strict_slashes=False)
def artisan_sign_up():
    """ displays the Sign-up page for artisan """
    countries = storage.all(Country).values()
    crafts = storage.all(Craft).values()
    return render_template('sell_with_us.html', countries=countries, crafts=crafts)


@app.route('/sign_up', methods=['GET', 'POST'], strict_slashes=False)
def customer_sign_up():
    """ displays the Sign-up page for the customer """
    form = SignUpForm()
    # If all the fields that the user inputted are correct based on the SignUpForm validators
    if form.validate_on_submit():
        """
        # Create a new customer with the data
        new_customer = Customer(first_name = form.first_name.data,
                                last_name = form.last_name.data,
                                email = form.email.data,
                                password = form.password1.data
                                )
        new_customer.save()
        """
        return redirect(url_for('sign_in'))
    # Otherwise, If the data inputted had errors (ex: name too long)
    """ # You can uncomment this to print them in the terminal if you want, but they're displayed on the page
    if form.errors != {}: 
        for err_msg in form.errors.values():
            print("error: {}".format(err_msg))
    """
    return render_template('sign_up.html', form=form)


@app.route('/sign_in', strict_slashes=False)
def sign_in():
    """ displays the Sign in page """
    return render_template('sign_in.html')


@app.route('/explore_artisans', strict_slashes=False)
def explore_artisans():
    """ displays the Explore Artisans Page for Shops """
    countries = storage.all(Country).values()
    artisans = storage.all(Artisan).values()
    crafts = storage.all(Craft).values()
    return render_template('explore_artisans.html', countries=countries, artisans=artisans, crafts=crafts)


@app.route('/explore_products', strict_slashes=False)
def explore_products():
    """ displays the Explore Products Page """
    crafts = storage.all(Craft).values()
    return render_template('explore_products.html', crafts=crafts)


@app.route('/artisan', strict_slashes=False)
def artisan():
    """ displays the Artisan shop Page """
    return "Artisan Shop Page\n"


@app.route('/product/<product_id>', strict_slashes=False)
def product(product_id):
    """ displays the Product Page """
    retrieved_product = storage.get(Product, product_id)
    craft = storage.get(Craft, retrieved_product.craft_id)
    artisan = storage.get(Artisan, retrieved_product.artisan_id)
    return render_template('product.html', product=retrieved_product, craft=craft, artisan=artisan)


@app.route('/about', strict_slashes=False)
def about():
    """ displays the About Page """
    return render_template('about.html')


@app.route('/order', strict_slashes=False)
def order():
    """ displays the order Page """
    return render_template('order.html')


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
