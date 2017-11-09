function main() {
    $("#asd").children().hide();

    function sortStatusBy(selected) {
        $("#pricing-table").children().hide();
        // $("#pricing-table").find(".free").hide();
        // $("#pricing-table").find(".finished").hide();
        // $("#pricing-table").find(".unfinished").hide();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           .hide();
        console.log($("#pricing-table").find("."+selected));
        $("#pricing-table").find("."+selected).parent().show();
    }

    function toogleGame(clicked) {
        $("#show-lol").css("opacity", 0.4);
        $("#show-overwatch").css("opacity", 0.4);
        $("#show-fifa").css("opacity", 0.4);
        $("#show-wow").css("opacity", 0.4);
        $("#show-csgo").css("opacity", 0.4);
        $("#show-"+clicked).css("opacity", 1);

        $(".database > .lol-order").hide();
        $(".database > .overwatch-order").hide();   
        $(".database > .fifa-order").hide();
        $(".database > .wow-order").hide();
        $(".database > .csgo-order").hide();
        $("#pricing-table").empty();
        
        $("#asd").find("."+ clicked + "-order").each(function() {
            $("#pricing-table").append('<div class="plan '+ clicked + '"-order">' + $(this).html() + '</div>');
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
    $("#show-overwatch").click(function () {
        toogleGame("overwatch"); 
    });



    $("#show-finished").click(function () {
        sortStatusBy("finished");
    });
    $("#show-unfinished").click(function () {
        sortStatusBy("unfinished");
    });
    $("#show-free").click(function () {
        sortStatusBy("free");
    });
}

$(document).ready(main);