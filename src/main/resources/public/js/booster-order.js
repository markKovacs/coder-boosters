function main() {

    showAll();


    function showAll() {
        $("#show-lol").css("opacity", 1);
        $("#show-ow").css("opacity", 1);
        $("#show-rl").css("opacity", 1);
        $("#show-wow").css("opacity", 1);
        $("#show-csgo").css("opacity", 1);

        $("#show-done").css("opacity", 1);
        $("#show-taken").css("opacity", 1);
        $("#show-available").css("opacity", 1);

        showGame("lol");
        showGame("csgo");
        showGame("rl");
        showGame("wow");
        showGame("ow");

        $("#pricing-table").find(".done").show();
        $("#pricing-table").find(".available").show();
        $("#pricing-table").find(".taken").show();
    }


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

        $("#pricing-table").empty();

        showGame(clicked);
    }

    function showGame(clicked) {
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