var left = 100;
var herbeh = 0; //px //herb 'empty' base height
var potheight = 1; //px*0.01
var baseperc = 40; //% of base herb

var perc = [10, 10, 10, 10, baseperc];

function createslider(i, val){
    $("#slider"+i).slider({
        min: 0, max: 60, value: val,
        slide: function(event, ui) {
            var id = this.id.slice(-1);
            if(ui.value >= ui.value + left && ui.value > perc[id]) {
                $(this).slider("value", perc[id]+left)
                return false;
            }
            document.getElementById("potperc").innerHTML = ui.value+"%";
            perc[id]=ui.value;
            updateheights();
            return true;
        },
        start: function(event, ui) {
            document.getElementById("potperc").innerHTML = ui.value+"%";
            $("#potperc").stop(true,true).fadeIn("fast");
        },
        stop: function(event, ui) {
            $("#potperc").stop(true,true).fadeOut("fast");
            
        if(left<=0) {
            $("#orderbutton").addClass("ready");
            $("#ordercircle").addClass("ready");
        } else {
            $("#orderbutton").removeClass("ready");
            $("#ordercircle").removeClass("ready");
        };
    }
    }) //slider end
};

function updatesliders(){
    for(i=0;i<=3;i++){
        createslider(i, perc[i]);
    };
};

function updateheights(){
    var i = 0;
    var sum = 0;

    left = 100;
    for(i=0;i<=4;i++){
        left-=perc[i];
    };

    for(i=0;i<=4;i++){
        $("#herb"+i).css("height",perc[i]*potheight+"%");
        sum += perc[i];
    }
    $("#herbe").css("height",herbeh+(100-sum)*potheight+"%")
};


$( document ).ready( function(){

    updatesliders();
    updateheights();

});

//zmontować popup koło dzbanka