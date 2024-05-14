const $ = window.$;
$(document).ready(function () {
    const selectedCrafts = {};

    $('div.crafts input[type="checkbox"]').change(function () {
        const craftId = $(this).data('id');
        const craftName = $(this).data('name');
    
        if ($(this).is(':checked')) {
          selectedCrafts[craftId] = craftName;
        } else {
          delete selectedCrafts[craftId];
        }
        $('div.crafts > h4').text(Object.values(selectedCrafts).join(', '));
    });

    $.ajax({
        url: 'http://localhost:5001/api/v1/products/',
        type: 'GET',
        /*contentType: 'application/json',
        data: '{}',
        dataType: 'json',*/
        success: function (response) {
            response.forEach(function (product) {
                $('ul.products-grid').append(`
                <li class="products-item" data-product-id="${product.id}">
                    <div class="item-img">
                        <img src="${product.picture}">
                    </div>
                    <div class="item-info">
                        <span class="name">${product.name}</span>
                        <span class="price">$${product.price}</span>
                    </div>
                </li>`);
            });
        }
    });

    $('button').on('click', function () {
        const crafts = Object.keys(selectedCrafts);
        const reqData = { 'crafts': crafts };
        $.ajax({
            url: 'http://localhost:5001/api/v1/product_search/',
            type: 'POST',
            data: JSON.stringify(reqData),
            contentType: 'application/json',
            success: function (response) {
            $('ul.products-grid').empty();
            response.forEach(function (product) {
                $('ul.products-grid').append(`
                    <li class="products-item" data-product-id="${product.id}">
                    <div class="item-img">
                        <img src="${product.picture}">
                    </div>
                    <div class="item-info">
                        <span class="name">${product.name}</span>
                        <span class="price">$${product.price}</span>
                    </div>
                </li>`);
            });
            }
        });
    });

    $(document).on('click', '.products-item', function() {
        // Get the product_id from the data-product-id when the product li is clicked
        const product_id = $(this).data('product-id');
        // Redirect the user to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
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
