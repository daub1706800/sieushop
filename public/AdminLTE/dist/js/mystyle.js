$(document).on('click', '.li-dropdown', function () {
    var check = $(this).find('.content-dropdown').hasClass('active');
    if (check) {
        $(this).find('.content-dropdown').removeClass('active');
    }
    else
    {
        $(this).find('.content-dropdown').addClass('active');
    }
});

$(function () {
    var url = this.location.href;
    var arr_url = url.split("/");
    var check_url = arr_url[arr_url.length-1];
    $('.nav-link').each(function (index) {
        var url_href = $(this).attr('href');
        var arr_url_href = url_href.split("/");
        var check_url_href = arr_url_href[arr_url_href.length-1];
        if (check_url == check_url_href) {
            $(this).addClass('active');
            $(this).parent().parent().parent().addClass('menu-open');
            $(this).parent().parent().parent().find('.content-dropdown').addClass('active');
        }
    });
});