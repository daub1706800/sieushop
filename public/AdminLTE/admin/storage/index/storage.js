$(document).ready(function(){
    $(function(){
        var error = $('.alert-custom').html();
        if(error != null)
        {
            $('#btn-modal-click').click();
        }
    });

    $(function(){
        $(".company-selected").select2({
            tags: false,
            placeholder : 'Chọn công ty',
            theme: "classic",
            width: "100%"
        });
    });

    $(document).on('click', '.storage-item', function() {
        var idStorage = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
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
});