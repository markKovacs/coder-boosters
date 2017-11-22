function main() {
    $("#all-orders").children().hide();

    function sortStatusBy(selected) {
        $("#pricing-table").children().hide();
        $("#pricing-table").find("."+selected).show();
    }

    function toogleGame(clicked) {
        $("#show-lol").css("opacity", 0.4);
        $("#show-ow").css("opacity", 0.4);
        $("#show-fifa").css("opacity", 0.4);
        $("#show-wow").css("opacity", 0.4);
        $("#show-csgo").css("opacity", 0.4);
        $("#show-"+clicked).css("opacity", 1);

        $(".database > .lol-order").hide();
        $(".database > .ow-order").hide();
        $(".database > .fifa-order").hide();
        $(".database > .wow-order").hide();
        $(".database > .csgo-order").hide();
        $("#pricing-table").empty();
        
        $("#all-orders").find("."+ clicked + "-order").each(function() {
            var thisClasses = $(this).attr('class');
            $("#pricing-table").append('<div class="'+ thisClasses + '">' + $(this).html() + '</div>');
        });
        
    }

    $("#show-lol").click(function () {
       toogleGame("lol");
    });

    $("#show-csgo").click(function () {
        toogleGame("csgo");
    });

    $("#show-fifa").click(function () {
        toogleGame("fifa");
    });

    $("#show-wow").click(function () {
        toogleGame("wow");
    });
    $("#show-ow").click(function () {
        toogleGame("ow");
    });



    $("#show-done").click(function () {
        sortStatusBy("done");
    });
    $("#show-taken").click(function () {
        sortStatusBy("taken");
    });
    $("#show-available").click(function () {
        sortStatusBy("available");
    });
}

$(document).ready(main);