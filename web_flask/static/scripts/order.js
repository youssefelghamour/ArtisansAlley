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
            let totalItems = 0;
            let totalPrice = 0;
            response.forEach(function (product) {
                totalItems++;
                totalPrice += product.price;
                $('.order-items').append(`
                    <div class="order-item">
                        <div class="order-img" data-product-id="${product.id}">
						    <img src="${product.picture}" alt="Product Image">
                        </div>
						<div class="item-details">
							<h2 data-product-id="${product.id}">${product.name}</h2>
							<div class="price-line">
								<p class="prc">Price: </p>
								<p class="product-price">$${product.price}</p>
							</div>
						</div>
						<button class="remove-btn" data-product-id="${product.id}">
                            <span class="text">Delete</span>
                            <span class="icon">X</span>
                        </button>
					</div>`);
            });
            $('.total-items').text(totalItems);
            $('.total-price').text(`$${totalPrice.toFixed(2)}`);
            $('.cart-total').text(totalItems);
        }
    });

    $(document).on('click', '.remove-btn', function () {
        const productId = $(this).data('product-id');
        const $itemToRemove = $(`.order-item[data-product-id="${productId}"]`);
        var confirmation = confirm("Are you sure you want to remove this order?");
        if (confirmation) {
            $.ajax({
                url: `http://localhost:5001/api/v1/orders/${orderId}/products/${productId}`,
                type: 'DELETE',
                success: function (response) {
                    $itemToRemove.remove();
                    reloadOrderItems();
                },
            });
        } else {
            // Close the confirmation box without performing any action
            return;
        }
    });

    function reloadOrderItems() {
        $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderId}/products`,
            type: 'GET',
            success: function (response) {
                $('.order-items').empty(); // Clear existing items
                let totalItems = 0;
                let totalPrice = 0;
                response.forEach(function (product) {
                    totalItems++;
                    totalPrice += product.price;
                    $('.order-items').append(`
                        <div class="order-item" data-product-id="${product.id}">
                            <div class="order-img" data-product-id="${product.id}">
                                <img src="${product.picture}" alt="Product Image">
                            </div>
                            <div class="item-details">
                                <h2 data-product-id="${product.id}">${product.name}</h2>
                                <div class="price-line">
                                    <p class="prc">Price: </p>
                                    <p class="product-price">$${product.price}</p>
                                </div>
                            </div>
                            <button class="remove-btn" data-product-id="${product.id}">
                                <span class="text">Delete</span>
                                <span class="icon">X</span>
                            </button>
                        </div>`);
                });
                $('.total-items').text(totalItems);
                $('.total-price').text(`$${totalPrice.toFixed(2)}`);
                $('.cart-total').text(totalItems);
            },
        });
    }

    // get the current date
    const currentDate = new Date();

    // format the date as desired (e.g., "Friday 26/04/2024")
    const formattedDate = currentDate.toLocaleDateString('en-US', {
        weekday: 'long',
        day: '2-digit',
        month: '2-digit',
        year: 'numeric'
    });

    // populate the date into the HTML element
    document.getElementById('current-date').textContent = formattedDate;

    $(document).on('click', '.checkout-btn', function() {
        window.location.href = `/checkout`;
    });

    // redirects the customer to the product page when the image is clicked
    $(document).on('click', '.order-img', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    // redirects the customer to the product page when the name is clicked
    $(document).on('click', '.item-details h2', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

});