const $ = window.$;
$(document).ready(function () {
    const orderId = $('.order-button').data('order-id');
    const productId = $('.product-details').data('product-id');
    const userId = $('.addReviewBtn').data('user-id')

    $.ajax({
        url: `http://localhost:5001/api/v1/reviews/${productId}`,
        type: 'GET',
        /*contentType: 'application/json',
        data: '{}',
        dataType: 'json',*/
        success: function (response) {
            response.forEach(function (review, index) {
                let dateString = review.created_at;
                let date = new Date(dateString);
                let options = { year: 'numeric', month: 'long', day: 'numeric' };
                review.created_at = date.toLocaleDateString('en-US', options);
                if (index < 3) {
                    $('#reviews .review_list').append(`
                    <div class="review">
                        <div class="user-info">
                            <p><strong>${review.customer_name}</strong></p>
                            <p class="review-date">Date: ${review.created_at}</p>
                        </div>
                        <p class="user-review">${review.text}</p>
                    </div>`);
                } else {
                    $('#reviews .review_list').append(`
                    <div class="review" style="display: none;">
                        <div class="user-info">
                            <p><strong>${review.customer_name}</strong></p>
                            <p class="review-date">Date: ${review.created_at}</p>
                        </div>
                        <p class="user-review">${review.text}</p>
                    </div>`);
                }
            });

            if (response.length > 3) {
                $('.showMoreBtn').show();
            }
        }
    });

    var orderButton = $('.order-button');
    if (orderButton) {
        orderButton.click(function() {
        // $(document).on('click', '.order-button', function() {
            var orderId = $(this).data('order-id');
            var productId = $(this).data('product-id');
            const orderIdNumber = $('.cart').data('order-id');
            $.ajax({
                url: `http://localhost:5001/api/v1/orders/${orderIdNumber}/products`,
                type: 'GET',
                success: function (response) {
                    let totalItems = 0;
                    response.forEach(function (product) {
                        totalItems++;
                    });
                    $('.cart-total').text(totalItems);
                }
            });
            
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

    $('.showMoreBtn').click(function() {
        $('.review:hidden').show();
        $(this).hide();
    });

    $('.addReviewBtn').click(function() {
        if ($('.addReviewBtn').text() === 'Submit') {
            const text = $('textarea').val()
            const review = {"text": text, "customer_id": userId}
            $.ajax({
                url: `http://localhost:5001/api/v1/reviews/${productId}`,
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(review),
                dataType: 'json',
                success: function (response) {
                    console.log("AJAX success:", response);
                    showMessage('Thanks for your feedback');
                    reloadReviews();
                    $('textarea').val('');
                }
            });

            $('textarea').hide();
            $('.user_name').hide();
            $(this).text('Leave a review');
            
        } else {

            $('textarea').show();
            $('.user_name').show();
            $(this).text('Submit');
        }
    });

    function reloadReviews() {
        $.ajax({
            url: `http://localhost:5001/api/v1/reviews/${productId}`,
            type: 'GET',
            /*contentType: 'application/json',
            data: '{}',
            dataType: 'json',*/
            success: function (response) {
                $('.review_list').empty();
                response.forEach(function (review, index) {
                    let dateString = review.created_at;
                    let date = new Date(dateString);
                    let options = { year: 'numeric', month: 'long', day: 'numeric' };
                    review.created_at = date.toLocaleDateString('en-US', options);
                    if (index < 3) {
                        $('#reviews .review_list').append(`
                        <div class="review">
                            <div class="user-info">
                                <p><strong>${review.customer_name}</strong></p>
                                <p class="review-date">Date: ${review.created_at}</p>
                            </div>
                            <p class="user-review">${review.text}</p>
                        </div>`);
                    } else {
                        $('#reviews .review_list').append(`
                        <div class="review" style="display: none;">
                            <div class="user-info">
                                <p><strong>${review.customer_name}</strong></p>
                                <p class="review-date">Date: ${review.created_at}</p>
                            </div>
                            <p class="user-review">${review.text}</p>
                        </div>`);
                    }
                });
    
                if (response.length > 3) {
                    $('.showMoreBtn').show();
                }
            }
        });
    }

    $(document).on('click', '.products-item', function() {
        // Get the product_id from the data-product-id when the product li is clicked
        const product_id = $(this).data('product-id');
        // Redirect the user to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    $(document).on('click', '.artisan-name', function() {
        // Get the artisan id from the data-product-id when the product li is clicked
        const artisanId = $('.artisan-name').data('artisan-id');
        // Redirect the user to the artisan page with the specified artisan ID
        window.location.href = `/artisan/${artisanId}`;
    });

    const orderIdNumber = $('.cart').data('order-id');
    if (orderIdNumber) {
            $.ajax({
            url: `http://localhost:5001/api/v1/orders/${orderIdNumber}/products`,
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
