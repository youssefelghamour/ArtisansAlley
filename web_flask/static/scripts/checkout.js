const $ = window.$;
$(document).ready(function () {
    const orderId = $('.form-container').data('order-id')

    let shippingCost = 0;
    let shippingCostApplied = false;
    
    function isDeliveryFormFilled() {
        const inputs = $('.Delivery input, .Delivery select');
        let countryFieldFilled = false;
        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].tagName === 'SELECT') {
                if (inputs[i].value.trim() !== "Country/Region") {
                    countryFieldFilled = true;
                }
                continue;
            }
            if (!inputs[i].value.trim()) {
                return false;
            }
        }
        return countryFieldFilled;
    }
    
    function togglePayNowButton() {
        const payNowButton = $('.btn');
        if (isDeliveryFormFilled()) {
            payNowButton.prop('disabled', false);
        } else {
            payNowButton.prop('disabled', true);
        }
    }
    
    function updateShippingOptions() {
        if (!shippingCostApplied) {
            shippingCost = 6.99;
            $('.shipping_method p').html(`DHL: <div class="price">$${shippingCost}</div>`);
            $('.shipping_method').addClass('correct')
            
            updateTotalCost();
            
            shippingCostApplied = true;
        }
    }
    
    function updateTotalCost() {
        const totalPrice = parseFloat($('.total-price').text().replace('$', ''));
        const newTotalPrice = totalPrice + shippingCost;
        $('#shipping .price').text(`$${shippingCost.toFixed(2)}`);
        $('.total-price').text(`$${newTotalPrice.toFixed(2)}`);
    }

    function deductShippingCost() {
        const totalPrice = parseFloat($('.total-price').text().replace('$', ''));
        const newTotalPrice = totalPrice - shippingCost;
        $('.total-price').text(`$${newTotalPrice.toFixed(2)}`);
    }
    
    $('.Delivery input, .Delivery select').on('input', function() {
        togglePayNowButton();
        
        if (isDeliveryFormFilled()) {
            updateShippingOptions();
        } else {
            $('.shipping_method').html(`<p>Enter your shipping address to view available shipping methods</p>`);
            $('.shipping_method').removeClass('correct')
            $('#shipping .price').text('Enter delivery address');
            
            shippingCostApplied = false;
            deductShippingCost();
        }
    });

    $.ajax({
        url: `http://localhost:5001/api/v1/orders/${orderId}/products`,
        type: 'GET',
        /*contentType: 'application/json',
        data: '{}',
        dataType: 'json',*/
        success: function (response) {
            let totalPrice = 0;
            response.forEach(function (product) {
                totalPrice += product.price;
                $('.products').append(`
                <div class="order-item">
						<img src="${product.picture}" alt="Product Image">
						<div class="item-details">
							<h2>${product.name}</h2>
								<p class="product-price">$${product.price}</p>
						</div>
					</div>`);
            });
            $('.total-price').text(`$${totalPrice.toFixed(2)}`);
        }
    });

    const orderIdNumber = $('.cart').data('order-id');
    if (orderIdNumber) {
            $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderIdNumber}/products`,
            type: 'GET',
            success: function (response) {
                let totalItems = 0;
                response.forEach(function (product) {
                    totalItems++;
                });
                $('.cart-total').text(totalItems);
            }
        });
    }

    const stripe = Stripe('pk_test_51PE2BH00iKDOAQfh0WWsB1XBA20NdM4v5KbJVa9zMTU7cBJoXlX5pmxsbDYTMNbBJ5nvMBjSttf7KPIMDItSfp3a00I3NTuhwb');

    const appearance = {
        theme: 'flat'
    };

    $.ajax({
        url: `http://localhost:5000/create_payment_intent`,
        type: 'POST',
        contentType: 'application/json',
        data: '{}',
        dataType: 'json',
        success: function (response) {
            processKey(response.clientSecret)
        }
    });
    
    function processKey(clientSecret) {
        const elements = stripe.elements({clientSecret, appearance})
        const paymentElement = elements.create('payment')
        paymentElement.mount('.form-group')
        const from = document.getElementById('payment')
        const totalPrice = parseFloat($('.total-price').text().replace('$', ''));

        from.addEventListener('submit', async(e) => {
            e.preventDefault();
            const {error} = await stripe.confirmPayment({

                elements,
                confirmParams: {
                    return_url: window.location.href.replace('checkout', 'success')
                }
            })

            if (error) {
                const messages = document.getElementById('error')
                messages.innerText = error.message;
            }
        })
    }


});