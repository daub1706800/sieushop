$(document).ready(function(){
    $(document).on('click', '.product-item', function() {
        var idProduct = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
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