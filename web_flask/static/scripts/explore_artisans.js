const $ = window.$;
$(document).ready(function () {
    const selectedCities = {};
    const selectedCrafts = {};
    
    $('div.location input[type="checkbox"]').change(function () {
        const cityId = $(this).data('id');
        const cityName = $(this).data('name');
    
        if ($(this).is(':checked')) {
          selectedCities[cityId] = cityName;
        } else {
          delete selectedCities[cityId];
        }
        $('div.location > h4').text(Object.values(selectedCities).join(', '));
    });

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
        url: 'http://localhost:5001/api/v1/artisans/',
        type: 'GET',
        /*contentType: 'application/json',
        data: '{}',
        dataType: 'json',*/
        success: function (response) {
            response.forEach(function (artisan) {
                // make a new section for the crafts se we can add it to the artisan info card
                const newSection = $('<section class="craft-name"><h4 data-tooltip="Full craft name"></h4></section>');

                // make a string and add to it the craft names one by one and join them with commas
                const craftsHtml = artisan.crafts ? artisan.crafts.map(craft => `${craft.name}`).join(', ') : '';

                // select the new section and add to it the string of craft names
                newSection.find('h4').html(craftsHtml); // Set HTML content of <h4> element

                // add the tooltip hover hint attribute and populate it with the names of the crafts
                newSection.find('h4').attr('data-tooltip', craftsHtml);

                // add each artisan and add the newSection with the crafts to it
                $('section.artisans').append(`
                    <ul>
                        <li class="products-item" data-artisan-id="${artisan.id}">
                            <div class="item-img">
                                <img src="${artisan.picture}">
                            </div>
                            <div class="item-info">
                                <span class="name">${artisan.name}</span>
                            </div>
                        </li>
                    </ul>`);
                $('section.artisans .item-info').last().append(artisan.crafts ? newSection : '');
            });
        }
    });

    $('button').on('click', function () {
        const cities = Object.keys(selectedCities);
        const crafts = Object.keys(selectedCrafts);
        const reqData = { 'cities': cities, 'crafts': crafts };
        $.ajax({
            url: 'http://localhost:5001/api/v1/artisans_search/',
            type: 'POST',
            data: JSON.stringify(reqData),
            contentType: 'application/json',
            success: function (response) {
            $('section.artisans').empty();
            response.forEach(function (artisan) {
                // make a new section for the crafts se we can add it to the artisan info card
                const newSection = $('<section class="craft-name"><h4 data-tooltip="Full craft name"></h4></section>');

                // make a string and add to it the craft names one by one and join them with commas
                const craftsHtml = artisan.crafts ? artisan.crafts.map(craft => `${craft.name}`).join(', ') : '';

                // select the new section and add to it the string of craft names
                newSection.find('h4').html(craftsHtml); // Set HTML content of <h4> element

                // add the tooltip hover hint attribute and populate it with the names of the crafts
                newSection.find('h4').attr('data-tooltip', craftsHtml);

                // add each artisan and add the newSection with the crafts to it
                $('section.artisans').append(`
                    <ul>
                        <li class="products-item" data-artisan-id="${artisan.id}">
                            <div class="item-img">
                                <img src="${artisan.picture}">
                            </div>
                            <div class="item-info">
                                <span class="name">${artisan.name}</span>
                            </div>
                        </li>
                    </ul>`);
                $('section.artisans .item-info').last().append(artisan.crafts ? newSection : '');
            });
            }
        });
    });

    $(document).on('click', '.products-item', function() {
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
