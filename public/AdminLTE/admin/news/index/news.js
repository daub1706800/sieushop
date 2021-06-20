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
                $('.tieude').html(data.news.tieudetintuc);
                $('.tomtat').html(data.news.tomtattintuc);
                $('.hinhanh').attr('src',data.news.hinhanhtintuc);
                $('.noidung').html(data.news.noidungtintuc);
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
                $('.tieudeNews').text(data.news);
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
                Toast.fire({
                    icon: 'success',
                    title: 'Chuyển đổi thành công'
                });

                that.val(data);
            }
        });
    });
});