const $ = window.$;
$(document).ready(function () {
    const orderId = $('.order-button').data('order-id');
    const productId = $('.order-button').data('product-id');

    var orderButton = $('.order-button');
    if (orderButton) {
        orderButton.click(function() {
            var orderId = $(this).data('order-id');
            var productId = $(this).data('product-id');
            
            // AJAX request
            $.ajax({
                url: `http://localhost:5001/api/v1/orders/${orderId}/product/${productId}`,
                type: 'POST',
                success: function(response) {
                    console.log("AJAX success:", response);
                    showMessage('Product added to cart');
                },
                error: function() {
                    console.log("AJAX error");
                    showMessage('Product already added', true);
                }
            });
        });
    }

    function showMessage(message, isError = false) {
        const messageBox = $('#message-box');
        messageBox.text(message);
        messageBox.show();
        setTimeout(function () {
            messageBox.fadeOut(); // Automatically hide the message after 3 seconds
        }, 3000);
    }

    var signinButton = document.getElementById('order-signin-button');
    if (signinButton) {
        signinButton.addEventListener('click', function() {
            window.location.href = signinButton.getAttribute('data-url');
        });
    }

});