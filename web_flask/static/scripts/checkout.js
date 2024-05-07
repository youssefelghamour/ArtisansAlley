const $ = window.$;
$(document).ready(function () {
    const orderId = $('.Products').data('order-id')

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
                $('.Products').prepend(`
                <li>
                    ${product.name}<div class="price">$${product.price}</div>
                </li>`);
            });
            $('.total-price').text(`$${totalPrice.toFixed(2)}`);
        }
    });

    let previousShippingCost = 0;

    // Function to update total price
    function updateTotalPrice(shippingCost) {
        const totalPriceElement = $('.total-price');
        let totalPrice = parseFloat(totalPriceElement.text().replace('$', ''));
        totalPrice -= previousShippingCost;
        totalPrice += shippingCost;
        totalPriceElement.text(`$${totalPrice.toFixed(2)}`);
        previousShippingCost = shippingCost;
    }

    $('input[name="shipping_method"]').change(function () {
        const selectedShippingMethod = $(this).val();
        let shippingCost = 0;

        if (selectedShippingMethod === 'standard') {
            shippingCost = 5.00;
        } else if (selectedShippingMethod === 'express') {
            shippingCost = 10.00;
        }

        $('#shipping .price').text(`$${shippingCost.toFixed(2)}`);

        updateTotalPrice(shippingCost);
    });
    
});