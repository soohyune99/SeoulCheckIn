$(".append-buttons .map_tab").on("click", function(){
    $(".map_tab").removeClass('map_active');
    $(this).addClass("map_active");
    $(".icon_wrap2").removeClass('map_select');
    $(".cls-4").removeClass('map_select');
    $(".slide-"+$(this).attr('class')[15]).addClass('map_select');
});
