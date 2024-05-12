document.addEventListener("DOMContentLoaded", async () => {

    const stripe = Stripe('pk_test_51PE2BH00iKDOAQfh0WWsB1XBA20NdM4v5KbJVa9zMTU7cBJoXlX5pmxsbDYTMNbBJ5nvMBjSttf7KPIMDItSfp3a00I3NTuhwb');
    const params = new URLSearchParams(window.location.href)
    const clientSecret = params.get('payment_intent_client_secret')
    const paymentIntent = await stripe.retrievePaymentIntent(clientSecret)
    const paymentIntentPre = document.getElementById('payment-intent')
    paymentIntentPre.innerHTML = JSON.stringify(paymentIntent.paymentIntent.status, null, 2)
    paymentIntentPre.innerHTML = paymentIntentPre.innerHTML.replace(/"/g, '');
    paymentIntentPre.innerHTML = "Payment " + paymentIntentPre.innerHTML

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

    const monthNames = ["January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"];

    let currentDate = new Date();

    let day = currentDate.getDate();
    let month = monthNames[currentDate.getMonth()]; // Get month name
    let year = currentDate.getFullYear();
    let hours = currentDate.getHours();
    let minutes = currentDate.getMinutes();
    let ampm = hours >= 12 ? 'PM' : 'AM';

    hours = hours % 12;
    hours = hours ? hours : 12;

    minutes = minutes < 10 ? '0' + minutes : minutes;

    $('#paymentDate .info').html(`${month} ${day}, ${year}, ${hours}:${minutes} ${ampm}`);
    $('#amount .info').html(`$${paymentIntent.paymentIntent.amount / 100}`)

    $(document).on('click', '.home-btn', function() {
        window.location.href = `/`;
    });

});