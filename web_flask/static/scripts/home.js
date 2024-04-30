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

});