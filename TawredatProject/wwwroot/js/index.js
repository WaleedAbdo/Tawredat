$(document).ready(function () {
    $('#detailsButton').on('click', function () {
        var invoiceId = $(this).data('invoice-id');

        $.ajax({
            url: '/SalesInvoice/Details',
            type: 'GET',
            data: { SalesInvoiceId: invoiceId },
            success: function (result) {
                $('#detailsContainer').html(result);
            },
            error: function (error) {
                console.error(error);
            }
        });
    });
});
