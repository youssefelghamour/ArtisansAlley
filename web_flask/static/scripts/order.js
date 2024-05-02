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
						<img src="${product.picture}" alt="Product Image">
						<div class="item-details">
							<h2>${product.name}</h2>
							<div class="price-line">
								<p class="prc">Price: </p>
								<p class="product-price">$${product.price}</p>
							</div>
						</div>
						<button class="remove-btn" data-product-id="${product.id}">Remove</button>
					</div>`);
            });
            $('.total-items').text(totalItems);
            $('.total-price').text(`$${totalPrice.toFixed(2)}`);
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
                            <img src="${product.picture}" alt="Product Image">
                            <div class="item-details">
                                <h2>${product.name}</h2>
                                <div class="price-line">
                                    <p class="prc">Price: </p>
                                    <p class="product-price">$${product.price}</p>
                                </div>
                            </div>
                            <button class="remove-btn" data-product-id="${product.id}">Remove</button>
                        </div>`);
                });
                $('.total-items').text(totalItems);
                $('.total-price').text(`$${totalPrice.toFixed(2)}`);
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

});