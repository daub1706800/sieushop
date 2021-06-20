$(document).ready(function(){
    $('.checkbox-parent').on('click', function(){
        $(this).parents('tr').find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
    });

    $('.check-all').on('click', function(){
        $(this).parents().find('.checkbox-parent').prop('checked', $(this).prop('checked'));
        $(this).parents().find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
    });

    $(function () {
        var errors = $('.alert-custom').html();
        if (errors != null) {
            $('#btn-modal-click').click();
        }
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

    $(document).on('click', '.delete-role', function (e) {
        e.preventDefault();
        var url = $(this).attr('href');
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
                    url : url,
                    type: "get",
                    success:function(data) {
                        if (data.code == 200) {
                            Toast.fire({
                                icon: 'success',
                                title: 'Xóa thành công'
                            }).then((result) => {
                                location.reload();
                            });
                        }
                    }
                });
            }
        });
    });
});