const $ = window.$;
$(document).ready(function () {
    
    $(document).on('click', '.popular-item', function() {
        // Get the product_id from the data-product-id when the product li is clicked
        const product_id = $(this).data('product-id');
        // Redirect the user to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    $(document).on('click', '.collection-item', function() {
        // Get the product_id from the data-product-id when the product li is clicked
        const artisan_id = $(this).data('artisan-id');
        // Redirect the user to the product page with the specified product ID
        window.location.href = `/artisan/${artisan_id}`;
    });

    const orderId = $('.cart').data('order-id');
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

    const artisanId = $('.cart').data('artisan-id');
    if (artisanId) {
        $.ajax({
            url: `http://localhost:5001/api/v1/archives/${artisanId}`,
            type: 'GET',
            success: function (response) {
                let totalOrders = 0;
                response.forEach(function (product) {
                    totalOrders++;
                });
                $('.cart-total').text(totalOrders);
            }
        });
    }

});