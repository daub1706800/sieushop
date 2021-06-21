$(document).ready(function(){
    $(document).on('click', '.tieudetintuc', function() {
        var idNews = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
            type : "get",
            data : {
                "idNews":idNews,
            },
            success:function(data) {
                $('.chuyenmuc').html(data.category);
                $('.ngaydang').html('Viết ngày ' + data.ngaydang);
                $('.tieude').html(data.newsvideo.tieudevideo);
                $('.tomtat').html(data.newsvideo.tomtatvideo);
                $('.hinhanh').attr('src',data.newsvideo.hinhdaidienvideo);
                $('.noidung').html('Nguồn: ' + data.newsvideo.nguonvideotintuc);
                $('.video').html(data.video);
                $('.tacgia').html(data.author);
            }
        });
    });

    $(document).on('click', '.viewhistory', function() {
        var idNews = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
            type : "get",
            data : {
                "idNews":idNews,
            },
            success:function(data) {
                $('.tieudeNews').text(data.newsvideo);
                $('.show-history').html(data.output);
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

    $(document).on('click', '.tinnoibat', function() {
        var id = $(this).data('id');
        var url = $(this).data('url');
        var that = $(this);
        if ($(this).val() == 1) {
            var status = 1;
        }
        else
        {
            var status = 0;
        }
        $.ajax({
            url : url,
            type: "get",
            data: {
                "id":id,
                "status":status
            },
            
            success:function(data) {
                if (data.code == 200) {
                    Toast.fire({
                        icon: 'success',
                        title: 'Chuyển đổi thành công !'
                    });
    
                    that.val(data);
                }
            },
            error: function (xhr) {
                Toast.fire({
                    icon: 'warning',
                    title: 'Không thể chuyển đổi !'
                }).then((result) => {
                    location.reload();
                });
            }
        });
    });

    $(document).on('click', '.delete-newsvideo', function (e) {
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
    });
});