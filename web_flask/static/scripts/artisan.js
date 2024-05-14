const $ = window.$;
$(document).ready(function () {
    
    $(document).on('click', '.products-item', function() {
        // Get the product_id from the data-product-id when the product li is clicked
        const product_id = $(this).data('product-id');
        // Redirect the user to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    $(document).on('click', '.remove-btn', function (event) {
        event.stopPropagation();
        const productId = $(this).closest('.products-item').data('product-id');
        const $itemToRemove = $(`.products-item[data-product-id="${productId}"]`);
        var confirmation = confirm("Are you sure you want to remove this product?");
        if (confirmation) {
            $.ajax({
                url: `http://localhost:5001/api/v1/products/${productId}`,
                type: 'DELETE',
                success: function (response) {
                    $itemToRemove.remove();
                    location.reload();
                },
            });
        } else {
            // Close the confirmation box without performing any action
            return;
        }
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