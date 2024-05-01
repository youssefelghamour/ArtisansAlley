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
							<h2>${product.name}</h2>
							<div class="price-line">
								<p class="prc">Price: </p>
								<p class="product-price">$${product.price}</p>
							</div>
						</div>
						<button class="remove-btn" data-product-id="${product.id}">Remove</button>
					</div>`);
            });
        }
    });

    $(document).on('click', '.remove-btn', function () {
        const productId = $(this).data('product-id');
        const $itemToRemove = $(`.order-item[data-product-id="${productId}"]`);
        $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderId}/products/${productId}`,
            type: 'DELETE',
            success: function (response) {
                $itemToRemove.remove();
                reloadOrderItems();
            },
        });
    });

    function reloadOrderItems() {
        $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderId}/products`,
            type: 'GET',
            success: function (response) {
                $('.order-items').empty(); // Clear existing items
                response.forEach(function (product) {
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
            },
        });
    }

});