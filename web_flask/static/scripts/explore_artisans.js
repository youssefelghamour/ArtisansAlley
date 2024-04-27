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
                $('section.artisans').append(`
                        <ul>
                            <li class="products-item">
                                <div class="item-img">
                                    <img src="../static/images/avatar.png">
                                </div>
                                <div class="item-info">
                                    <span class="name">${artisan.name}</span>
                                </div>
                            </li>
                        </ul>`);
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
                $('section.artisans').append(`
                        <ul>
                            <li class="products-item">
                                <div class="item-img">
                                    <img src="../static/images/avatar.png">
                                </div>
                                <div class="item-info">
                                    <span class="name">${artisan.name}</span>
                                </div>
                            </li>
                        </ul>`);
            });
            }
        });
    });

});
