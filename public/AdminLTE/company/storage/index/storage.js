$(document).ready(function(){
    $(function() {
        var error = $('.alert-custom').html();
        if(error != null)
        {
            $('#btn-modal-click').click();
        }
    });

    $(document).on('click', '.storage-item', function() {
        var idStorage = $(this).data('id');
        $.ajax({
            url : $(this).data('url'),
            type : "get",
            data : {
                "idStorage":idStorage,
            },
            success:function(data) {
                $('.tenkho').text(data.storage.tenkho);
                $('.diachikho').text(data.storage.diachikho);
                $('.taitrongkho').text(data.storage.taitrongkho + ' (tấn)');
                $('.dientichkho').text(data.storage.dientichkho + ' (mét vuông)');
                $('.sonhanvien').text(data.storage.sonhanvienkho);
                $('.ghichukho').text(data.storage.ghichukho);
                $('.nguoitao').text(data.author);
                $('.congty').text(data.company);
                $('.taongay').text('Tạo ngày ' + data.date);
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

    $(document).on('click', '.delete-storage', function(e) {
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