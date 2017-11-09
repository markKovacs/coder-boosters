function main() {

    // $("#show-unfinished").css("opacity", 0.4);
    // $("#show-finished").css("opacity", 0.4);

    // $(".finished").parent().css("display", "none");
    // $(".unfinished").parent().css("display", "none");

    function sortStatusBy(selected) {
        // var activeGameText = findActiveGame();
        // var activeGame;
        // if(activeGameText.includes("lol")) {
        //     activeGame = "lol";
        // } else if(activeGameText.includes("wow")) {
        //     activeGame = "wow";
        // } else if(activeGameText.includes("fifa")) {
        //     activeGame = "fifa";
        // } else if(activeGameText.includes("csgo")) {
        //     activeGame = "csgo";
        // } else if(activeGameText.includes("overwatch")) {
        //     activeGame = "overwatch";
        // }
        // console.log(activeGame);

        var order = $("."+selected).parent();
        var toogler = $("#show-"+selected);
        if(order.css("display") == "block") {
            order.css("display", "none");
            toogler.css("opacity", 0.4);
            toogler.addClass("active");
        } else {
            order.css("display", "block");
            toogler.css("opacity", 1);
            toogler.addClass('inactive');
        }
    }

    // function findActiveGame() {
    //     var content = $("#gamePicker").children();
    //     console.log(content);
    //     for (var index = 0; index < content.length; index++) {
    //         var element = content[index];
            
    //         if(element.includes('active')) {
    //             return element;
    //         }
    //     }
        
    // }

    function toogleGame(clicked) {
        $("#show-lol").css("opacity", 0.4);
        $("#show-overwatch").css("opacity", 0.4);
        $("#show-fifa").css("opacity", 0.4);
        $("#show-wow").css("opacity", 0.4);
        $("#show-csgo").css("opacity", 0.4);
        $("#show-"+clicked).css("opacity", 1);

        // var content = $("."+clicked+"-order").html();
        // var div = '<div class="plan lol-order">';
        // $(".content").empty();
        // $(".database").hide();
        // $("#pricing-table").append(div + content + "</div>");

        $(".lol-order").hide();
        $(".overwatch-order").hide();
        $(".fifa-order").hide();
        $(".wow-order").hide();
        $(".csgo-order").hide();
        $("."+clicked+"-order").css("display", "block");
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