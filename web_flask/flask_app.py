#!/usr/bin/python3
""" Flask app """
from flask import Flask, flash, get_flashed_messages, render_template, redirect, url_for, request, jsonify
from models import storage
from models.country import Country
from models.artisan import Artisan
from models.craft import Craft
from models.customer import Customer
from models.product import Product
from models.review import Review
from models.craft import Craft
from models.order import Order
from models.archive import Archive
from web_flask.forms import SignUpForm, SellWithUsForm, SignInForm, AddProductForm, UpdateProfileForm, UpdateProductForm
from flask_bcrypt import Bcrypt
from werkzeug.utils import secure_filename
from flask_login import LoginManager, login_user, logout_user, current_user
import stripe
import json



app = Flask(__name__)
app.config['SECRET_KEY'] = '420d61563971313761f2e61f'
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
app.config['STRIPE_PUPLIC_KEY'] = 'pk_test_51PE2BH00iKDOAQfh0WWsB1XBA20NdM4v5KbJVa9zMTU7cBJoXlX5pmxsbDYTMNbBJ5nvMBjSttf7KPIMDItSfp3a00I3NTuhwb'
app.config['STRIPE_SECRET_KEY'] = 'sk_test_51PE2BH00iKDOAQfhwAKNSy0fr6HUINHLmM2U5fG8M4aywAHJKR9rWXI3wBA7Yw5NyPJ1kMSVxdDL41YYnHfTOKs600dqwwAwIy'
stripe.api_key = app.config['STRIPE_SECRET_KEY']


@app.teardown_appcontext
def app_teardown(exception):
    """ closes sql alchemy session after each request """
    storage.close()


@app.errorhandler(404) 
def not_found(e): 
    return render_template("404.html") 


@app.route('/', strict_slashes=False)
def home():
    """ displays the home page """
    products = storage.all(Product).values()
    artisans = storage.all(Artisan).values()

    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('home.html', products=products, artisans=artisans, order=order)
    
    return render_template('home.html', products=products, artisans=artisans)


@app.route('/sell_with_us', methods=['GET', 'POST'], strict_slashes=False)
def artisan_sign_up():
    """ displays the Sign-up page for artisan """
    countries = storage.all(Country).values()
    crafts = storage.all(Craft).values()
    form = SellWithUsForm()

    if not current_user.is_authenticated:
        if form.validate_on_submit():
            """
            # Store the image
            file = form.picture.data
            # Formats the name of the file (ex: from "logo 15.jpg" to "logol_15.jpg")
            file_name = secure_filename(file.filename)
            # Store it in /web_flask/static/images/
            file_path = "./web_flask/static/images/{}".format(file_name)
            file.save(file_path)
            # The value of the picture attribute will be the path so it can be accessed from the JS and HTML files with artisan.picture
            new_file_path = "../static/images/{}".format(file_name)
            """
            new_artisan = Artisan(
                name=form.name.data,
                email=form.email.data,
                description=form.description.data,
                city_id=form.city.data.id,
                password=form.password.data
            )
            new_artisan.crafts.append(form.craft.data)
            new_artisan.save()

            flash('Account created successfully. You can now sign in.')
            return redirect(url_for('sign_in'))

        return render_template('sell_with_us.html', form=form, countries=countries, crafts=crafts)
    
    else:
        flash('You are already Signed In')
        return redirect(url_for('home'))


@app.route('/sign_up', methods=['GET', 'POST'], strict_slashes=False)
def customer_sign_up():
    """ displays the Sign-up page for the customer """
    form = SignUpForm()

    if not current_user.is_authenticated:
        # If all the fields that the user inputted are correct based on the SignUpForm validators
        if form.validate_on_submit():
            
            # Create a new customer with the data
            new_customer = Customer(first_name = form.first_name.data,
                                    last_name = form.last_name.data,
                                    email = form.email.data,
                                    address = form.address.data,
                                    password = form.password.data
                                    )
            new_customer.save()
            new_customer.archives.append(Archive(customer_id=new_customer.id))
            storage.save()
            new_customer.order = Order(customer_id=new_customer.id)
            storage.save()
            
            flash('Account created successfully. You can now sign in.')
            return redirect(url_for('sign_in'))
        # Otherwise, If the data inputted had errors (ex: name too long)
        """ # You can uncomment this to print them in the terminal if you want, but they're displayed on the page
        if form.errors != {}: 
            for err_msg in form.errors.values():
                print("error: {}".format(err_msg))
        """
        return render_template('sign_up.html', form=form)

    else:
        flash('You are already Signed In')
        return redirect(url_for('home'))


@app.route('/sign_in', methods=['GET', 'POST'], strict_slashes=False)
def sign_in():
    """ displays the Sign in page """
    form = SignInForm()

    if not current_user.is_authenticated:
        if form.validate_on_submit():
            user = storage.check_email(form.email.data)
            if user and user.check_password(form.password.data):
                login_user(user)
                if isinstance(user, Customer):
                    flash('Signed in successfully as : {} {}'.format(user.first_name, user.last_name))
                else:
                    flash('Signed in successfully as : {}'.format(user.name))
                return redirect(url_for('home'))
            # if customer and customer.check_password(form.password.data):
            #     login_user(customer)
            #     flash('Signed in successfully as : {} {}'.format(customer.first_name, customer.last_name))
            #     return redirect(url_for('home'))
            # artisan = storage.check_email(form.email.data)
            # if artisan and artisan.check_password(form.password.data):
            #     login_user(artisan)
            #     flash('Signed in successfully as : {}'.format(artisan.name))
            #     return redirect(url_for('home'))
            flash('Email and password are invalid')
        flash_messages = get_flashed_messages(with_categories=True)
        return render_template('sign_in.html', flash_messages=flash_messages, form=form)
    
    else:
        flash('You are already Signed In')
        return redirect(url_for('home'))


@app.route('/explore_artisans', strict_slashes=False)
def explore_artisans():
    """ displays the Explore Artisans Page for Shops """
    countries = storage.all(Country).values()
    artisans = storage.all(Artisan).values()
    crafts = storage.all(Craft).values()

    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('explore_artisans.html', countries=countries, artisans=artisans, crafts=crafts, order=order)

    return render_template('explore_artisans.html', countries=countries, artisans=artisans, crafts=crafts)


@app.route('/explore_products', strict_slashes=False)
def explore_products():
    """ displays the Explore Products Page """
    crafts = storage.all(Craft).values()

    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('explore_products.html', crafts=crafts, order=order)

    return render_template('explore_products.html', crafts=crafts)


@app.route('/product/<product_id>', strict_slashes=False)
def product(product_id):
    """ displays the Product Page """
    products = storage.all(Product).values()
    retrieved_product = storage.get(Product, product_id)
    craft = storage.get(Craft, retrieved_product.craft_id)
    artisan = storage.get(Artisan, retrieved_product.artisan_id)
    if current_user.__class__.__name__ == "Customer":
        if not current_user.order:
            current_user.order = Order(customer_id=current_user.id)
            storage.save()
        order = current_user.order
        return render_template('product.html', product=retrieved_product, craft=craft, artisan=artisan, order=order, products=products)
    return render_template('product.html', product=retrieved_product, craft=craft, artisan=artisan, products=products)


@app.route('/artisan/<artisan_id>', strict_slashes=False)
def artisan(artisan_id):
    """ displays the artisan Page """
    retrieved_artisan = storage.get(Artisan, artisan_id)
    crafts = storage.all(Craft).values()

    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('artisan.html', artisan=retrieved_artisan, crafts=crafts, order=order)

    return render_template('artisan.html', artisan=retrieved_artisan, crafts=crafts)


@app.route('/update_profile/<artisan_id>', methods=['GET', 'POST'], strict_slashes=False)
def update_profile(artisan_id):
    """ updates the artisan's info """
    artisan = storage.get(Artisan, artisan_id)
    form = UpdateProfileForm()

    if current_user.is_authenticated:
        if current_user.id == artisan.id:

            if form.validate_on_submit():
                # Store the image
                file = form.picture.data
                # Formats the name of the file (ex: from "logo 15.jpg" to "logol_15.jpg")
                file_name = secure_filename(file.filename)
                # Store it in /web_flask/static/images/
                file_path = "./web_flask/static/images/{}".format(file_name)
                file.save(file_path)
                # The value of the picture attribute will be the path so it can be accessed from the JS and HTML files with artisan.picture
                new_file_path = "../static/images/{}".format(file_name)

                artisan.picture = new_file_path
                artisan.name = form.name.data
                artisan.description = form.description.data
                artisan.save()
                return redirect(url_for('artisan', artisan_id=current_user.id))
            
            form.description.data = artisan.description
            form.name.data = artisan.name
            return render_template('update_profile.html', form=form, artisan=artisan)
    
    else:
        return redirect(url_for('home'))


@app.route('/update_product/<product_id>', methods=['GET', 'POST'], strict_slashes=False)
def update_product(product_id):
    "update a product if it's artisan is the current_user"
    product = storage.get(Product, product_id)
    form = UpdateProductForm()

    if current_user.is_authenticated:
        if current_user.id == product.artisan_id:

            if form.validate_on_submit():

                file = form.picture.data
                file_name = secure_filename(file.filename)
                file_path = "./web_flask/static/images/{}".format(file_name)
                file.save(file_path)
                new_file_path = "../static/images/{}".format(file_name)

                product.picture = new_file_path
                product.name = form.name.data
                product.description = form.description.data
                product.price = form.price.data
                product.craft_id = form.craft.data.id

                storage.save()

                return redirect(url_for('product', product_id=product_id))

            form.name.data = product.name
            form.description.data = product.description
            form.price.data = product.price

            return render_template('update_product.html', form=form, product=product)
        else:
            return redirect(url_for('home'))
    else:
        return redirect(url_for('home'))


@app.route('/about', strict_slashes=False)
def about():
    """ displays the About Page """
    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('about.html', order=order)

    return render_template('about.html')


@app.route('/order', strict_slashes=False)
def order():
    """ displays the customer order Page """
    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            return render_template('order.html', order=order)
    
    flash('You are not signed in as a Customer')
    return redirect(url_for('home'))


@app.route('/add_product', methods=['GET', 'POST'], strict_slashes=False)
def add_product():
    """ displays the Sign-up page for artisan """
    form = AddProductForm()

    if form.validate_on_submit():
        # Store the image
        file = form.picture.data
        # Formats the name of the file (ex: from "logo 15.jpg" to "logol_15.jpg")
        file_name = secure_filename(file.filename)
        # Store it in /web_flask/static/images/
        file_path = "./web_flask/static/images/{}".format(file_name)
        file.save(file_path)
        # The value of the picture attribute will be the path so it can be accessed from the JS and HTML files with artisan.picture
        new_file_path = "../static/images/{}".format(file_name)
        new_product = Product(
            name=form.name.data,
            description=form.description.data,
            price=form.price.data,
            picture=new_file_path,
            artisan_id=current_user.id,
            craft_id=form.craft.data.id
        )
        new_product.save()

        #if form.craft.data not in current_user.crafts:
        #    current_user.crafts.append(form.craft.data)

        flash('Product added successfully')
        return redirect(url_for('artisan', artisan_id=current_user.id))

    return render_template('add_product.html', form=form)


@app.route('/checkout', methods=['GET', 'POST'], strict_slashes=False)
def checkout():
    """ displays the checkout page for the payement """
    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            countries = storage.all(Country).values()
            order = current_user.order
            return render_template('checkout.html', order=order, countries=countries)
    
    flash('You are not signed in as a Customer')
    return redirect(url_for('home'))


@app.route('/create_payment_intent', methods=['POST'])
def create_payment_intent():
    customer = stripe.Customer.create(
        email=current_user.email,
        name=current_user.first_name + ' ' + current_user.last_name,
    )
    total = 0
    order = current_user.order
    if order.products != []:
        for product in order.products:
            total += product.price
        total *= 100 #convert the total to cents
        total += 699 #added shipping costs
    else:
        total = 100
    payment_intent = stripe.PaymentIntent.create(
        amount=total,
        currency='usd',
        customer=customer,
        automatic_payment_methods={'enabled': True}
    )
    return jsonify(clientSecret=payment_intent.client_secret)


@app.route('/success', strict_slashes=False)
def success():
    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Customer":
            order = current_user.order
            for product in order.products:
                current_user.archives[-1].products.append(product)
            current_user.archives.append(Archive(customer_id=current_user.id))
            storage.save()
            current_user.order.products = []
            storage.save()
            return render_template('success.html', order=order)
    flash('You are not signed in as a Customer')
    return redirect(url_for('home'))


@app.route('/artisan_orders/<artisan_id>', strict_slashes=False)
def artisan_orders(artisan_id):
    """ displays a page for the artisan conating orders to his products """
    if current_user.is_authenticated:
        if current_user.__class__.__name__ == "Artisan":
            artisan = storage.get(Artisan, artisan_id)
            return render_template('artisan_orders.html', artisan=artisan)
    flash('You are not signed in as an Artisan')
    return redirect(url_for('home'))


@app.route('/logout', strict_slashes=False)
def logout():
    logout_user()
    flash('You have been successfully logged out!')
    return redirect(url_for('home'))


@login_manager.user_loader
def load_user(user_id):
    customer = storage.get(Customer, user_id)
    if customer:
        return customer
    else:
        artisan = storage.get(Artisan, user_id)
        return artisan


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
