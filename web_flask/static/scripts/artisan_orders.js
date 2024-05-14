const $ = window.$;
$(document).ready(function () {
    const artisanId = $('.cart-info').data('artisan-id');

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

    $.ajax({
        url: `http://localhost:5001/api/v1/archives/${artisanId}`,
        type: 'GET',
        success: function (response) {
            response.forEach(function (product) {
                $('.order-items').append(`
                    <div class="order-item" id="a-orders">
                        <div class="order-img" data-product-id="${product.id}">
                            <img src="${product.picture}" alt="Product Image">
                        </div>
						<div class="item-details">
							<h2 id="a-h2" data-product-id="${product.id}">${product.name}</h2>
                            <div class="price-line">
                                <h2  class="customer-detail">Ordered by: </h2>
                                <p class="order-product-detail">${product.customer.first_name} ${product.customer.last_name}</p>
                            </div>
                            <div  class="price-line">
                                <h2 class="customer-detail">Address: &nbsp; &nbsp; &nbsp;</h2>
                                <p class="order-product-detail">${product.customer.address}</p>
                            </div>
                            <div  class="price-line">
                                <h2 class="customer-detail">Date: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>
                                <p class="order-product-detail">${product.date}</p>
                            </div>
						</div>
                        <button class="status-btn" data-product-id="${product.id}">Mark as Shipped</button>
					</div>`);
            });
        }
    });

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

    $(document).on('click', '.status-btn', function() {
        $(this).css({
            'background-color': '#79de85',
            'pointer-events': 'none'
        }).prop('disabled', true)
          .text('Shipped');
    });

    // redirects the artisan to the product page when the image is clicked
    $(document).on('click', '.order-img', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

    // redirects the artisan to the product page when the name is clicked
    $(document).on('click', '#a-h2', function() {
        // Get the product_id from the data-product-id when the image is clicked
        const product_id = $(this).data('product-id');
        // Redirect the customer to the product page with the specified product ID
        window.location.href = `/product/${product_id}`;
    });

});