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

    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: false,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    });

    $(document).on('click', '.delete-product', function(e) {
        e.preventDefault();
        Swal.fire({
            title: 'Bạn có chắc ?',
            text: "Bạn sẽ không thể hoàn tác điều này !",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý',
            cancelButtonText: 'Hủy',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url : $(this).attr('href'),
                    type: "get",
                    success:function(data) {
                        if (data.code == 200) {
                            Toast.fire({
                                icon: 'success',
                                title: 'Xóa thành công !'
                            }).then((result) => {
                                location.reload();
                            });
                        }
                    }
                });
            }
        });
    })
});