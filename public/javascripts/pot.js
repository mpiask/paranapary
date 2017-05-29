var left = 100;
var herbeh = 80; //px //herb 'empty' base height
var potheight = 205*0.01; //px*0.01
var baseperc = 40; //% of base herb

var perc = [10, 10, 10, 10, baseperc];

function createslider(i, val){
    $("#slider"+i).slider({
        min: 0, max: 60, value: val,
        slide: function(event, ui) {
            id = this.id.slice(-1);
            if(ui.value >= ui.value + left && ui.value > perc[id]) {
                return false;
            }
            perc[id]=ui.value;
            updateheights();
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
        $("#herb"+i).css("height",perc[i]*potheight+"px");
        sum += perc[i];
    }
    $("#herbe").css("height",herbeh+(100-sum)*potheight+"px")
};



$( document ).ready( function(){

    updatesliders();
    updateheights();

});

//zmontować popup koło dzbanka