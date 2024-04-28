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
                <li class="products-item">
                    <div class="item-img">
                        <img src="../static/images/popular-1.jpg">
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
                    <li class="products-item">
                    <div class="item-img">
                        <img src="../static/images/popular-1.jpg">
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

});
