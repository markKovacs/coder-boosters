function main() {
    $("#all-orders").children().hide();
    toogleGame("lol");
    sortStatusBy("available");


    function sortStatusBy(selected) {
        $("#show-done").css("opacity", 0.4);
        $("#show-taken").css("opacity", 0.4);
        $("#show-available").css("opacity", 0.4);
        $("#show-"+selected).css("opacity", 1);
        console.log($("#show"+selected));
        $("#pricing-table").children().hide();
        $("#pricing-table").find("."+selected).show();
    }

    function toogleGame(clicked) {
        $("#show-lol").css("opacity", 0.4);
        $("#show-ow").css("opacity", 0.4);
        $("#show-rl").css("opacity", 0.4);
        $("#show-wow").css("opacity", 0.4);
        $("#show-csgo").css("opacity", 0.4);
        $("#show-"+clicked).css("opacity", 1);

        $(".database > .lol-order").hide();
        $(".database > .ow-order").hide();
        $(".database > .rl-order").hide();
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
       sortStatusBy("available");
    });

    $("#show-csgo").click(function () {
        toogleGame("csgo");
        sortStatusBy("available");
    });

    $("#show-rl").click(function () {
        toogleGame("rl");
        sortStatusBy("available");
    });

    $("#show-wow").click(function () {
        toogleGame("wow");
        sortStatusBy("available");
    });
    $("#show-ow").click(function () {
        toogleGame("ow");
        sortStatusBy("available");
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