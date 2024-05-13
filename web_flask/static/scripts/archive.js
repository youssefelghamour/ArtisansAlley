const $ = window.$;
$(document).ready(function () {
    const customerId = $('.cart-info').data('customer-id');
    const orderId = $('.cart-info').data('order-id');

    $.ajax({
        url: `http://localhost:5001/api/v1/customer_archives/${customerId}`,
        type: 'GET',
        success: function (response) {
            response.forEach(function (product) {
                $('.order-items').append(`
                    <div class="order-item" id="a-orders">
                        <div class="order-img" data-product-id="${product.id}">
                            <img src="${product.picture}" alt="Product Image">
                        </div>
						<div class="item-details">
							<h2 id="a-h2" data-product-id="${product.id}">${product.name}</h2>
                            <div class="price-line">
								<p class="prc">Price: </p>
								<p class="product-price">$${product.price}</p>
							</div>
                            <div  class="price-line">
                                <p class="prc">Date: </p>
                                <p class="order-product-detail">${product.date}</p>
                            </div>
						</div>
                        <button class="status-btn" id="product-status" data-product-id="${product.id}">Delivered</button>
					</div>`);
            });
        }
    });

    // redirects the artisan to the product page when the image is clicked
    $(document).on('click', '.order-img', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    // redirects the artisan to the product page when the name is clicked
    $(document).on('click', '.item-details h2', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    if (orderId) {
            $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderId}/products`,
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

});