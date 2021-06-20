$(document).ready(function (){
    $(function () {
        var errors = $('.alert-custom').html();
        if (errors != null) {
            $('#btn-modal-click').click();
        }
    });
});