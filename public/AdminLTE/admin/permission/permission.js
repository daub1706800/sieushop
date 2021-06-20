$(document).ready(function(){
    $(function(){
        $(".module-new-select").select2({
            tags: false,
            theme: "classic",
            width: "100%",
            multiple: true
        });
    });

    $(function(){
        $(".module-old-select").select2({
            tags: false,
            theme: "classic",
            width: "100%",
            // multiple: true
        });
    });

    /* Check permission checked */
    check_permission_checked();

    function check_permission_checked()
    {
        var dataPermission = $('#module_parent').val();
        var url = $('#module_parent').data('url');
        if(dataPermission)
        {
            $.ajax({
                url  : url,
                type : "get",
                data : {data:dataPermission},
                success:function(data)
                {
                    $('#module_childrent').html(data);
                }
            });
        }
    }

    $('#module_parent').on('change', function(){
        check_permission_checked();
    });
    /* ! Check permission checked */

    /* Check permission */
    $(function () {
        var url = $('#show-permission').data('url');
        $.ajax({
            url  : url,
            type : "get",
            success:function(data)
            {
                $('#show-permission').html(data);
                $(".module-new-select").select2({
                    tags: false,
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                });
            }
        });
    });
    /* ! Check permission */

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

    /* Change status permission */
    $(document).on('change', '.trangthaiquyen', function(){
        var permission_id = $(this).val();
        var url_on = $(this).data('url-on');
        var url_off = $(this).data('url-off');
        if(this.checked)
        {
            $.ajax({
                url  : url_on,
                type : "get",
                data : {permission_id:permission_id},
                success:function(data)
                {
                    Toast.fire({
                        icon: 'success',
                        title: 'Chuyển đổi thành công'
                    });
                }
            });
        }
        else
        {
            $.ajax({
                url  : url_off,
                type : "get",
                data : {permission_id:permission_id},
                success:function(data)
                {
                    Toast.fire({
                        icon: 'success',
                        title: 'Chuyển đổi thành công'
                    });
                }
            });
        }
    });
    /* ! Change status permission */

    /* Update permission */
    $(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('#csrf').val()
            }
        });
        $(document).on('click', '#update-permission', function (e){
            e.preventDefault();
            var url = $(this).data('url');
            $.ajax({
                url  : url,
                type : "post",
                data : new FormData($('#changeform')[0]),
                processData: false,
                contentType: false,
                success:function (data)
                {
                    if (data.message =! null)
                    {
                        $.notify({
                            icon: 'far fa-times-circle',
                            message: 'Quyền đã tồn tại'
                        },{
                            animate: {
                                enter: 'animated bounceIn',
                                exit: 'animated bounceOut'
                            },
                            type: 'off',
                            allow_dismiss: false,
                            placement: {
                                from: "bottom",
                                align: "right"
                            },
                        });
                    }
                    else
                    {
                        location.reload();
                    }
                }
            });
        });
    });
    /* ! Update permission */
});