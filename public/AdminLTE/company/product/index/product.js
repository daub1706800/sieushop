$(document).ready(function(){
    $(document).on('click', '.product-item', function() {
        var idProduct = $(this).data('id');
        $.ajax({
            url : $(this).data('url'),
            type : "get",
            data : {
                "idProduct":idProduct,
            },
            success:function(data) {
                $('.tensanpham').text(data.tensanpham);
                $('.ngaytao').text('Tạo ngày ' + data.date);
                $('#view-product').html(data.output);
            }
        });
    });
});