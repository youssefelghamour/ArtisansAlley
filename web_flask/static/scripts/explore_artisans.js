const $ = window.$;
$(document).ready(function () {
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
});