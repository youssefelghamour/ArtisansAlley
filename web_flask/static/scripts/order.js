const $ = window.$;
$(document).ready(function () {
    const orderId = $('.cart-info').data('order-id');
    $.ajax({
        url: `http://localhost:5001/api/v1/orders/${orderId}/products`,
        type: 'GET',
        /*contentType: 'application/json',
        data: '{}',
        dataType: 'json',*/
        success: function (response) {
            response.forEach(function (product) {
                $('.order-items').append(`
                    <div class="order-item">
						<img src="${product.picture}" alt="Product Image">
						<div class="item-details">
							<h2>${product.description}</h2>
							<div class="price-line">
								<p class="prc">Price: </p>
								<p class="product-price">$${product.price}</p>
							</div>
						</div>
						<button class="remove-btn">Remove</button>
					</div>`);
            });
        }
    });

});