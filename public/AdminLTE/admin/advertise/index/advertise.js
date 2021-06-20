$(document).ready(function(){
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

    $(document).on('click', '.loaiquangcao', function() {
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