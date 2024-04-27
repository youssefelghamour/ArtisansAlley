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

});
