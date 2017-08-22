var herbeh = 0; //px //herb 'empty' base height
var potheight = 1; //px*0.01
var baseperc = 40; //% of base herb
var perc = [10,10,10,10,baseperc]
var cap = 0;


function createslider(i, val){
    $("#slider"+i).slider({
        min: 0, max: 60, value: val,
        slide: function(event, ui) {
            if(ui.value >= cap && ui.value > perc[i]) {
                perc[i] = cap;
                showperc(perc[i]);
                updateheights();
                return false;
            }

            showperc(ui.value);
            perc[i]=ui.value;
            updateheights();
            return true;
        },
        start: function(event, ui) {
            cap = 100 - perc.reduce(add, 0) + perc[i];
            showperc(ui.value);
            $("#potperc").stop(true,true).fadeIn("fast");
        },
        stop: function(event, ui) {
            $("#potperc").stop(true,true).fadeOut("fast");
            $("input#quantity"+i).val(perc[i]);
            if(perc.reduce(add, 0) >= 100) {
                $("#orderbutton").addClass("ready");
                $("#ordercircle").addClass("ready");
            } else {
                $("#orderbutton").removeClass("ready");
                $("#ordercircle").removeClass("ready");
            };
        }
    }) //slider end
};

function showperc(perc){
  document.getElementById("potperc").innerHTML = perc+"%";
}

function updatesliders(){
    for(i=0;i<=3;i++){
        createslider(i, perc[i]);
    };
};

function updateheights(){
    var i = 0;
    var sum = 0;

    for(i=0;i<=4;i++){
        $("#herb"+i).css("height",perc[i]*potheight+"%");
        sum += perc[i];
    }
    $("#herbe").css("height",herbeh+(100-sum)*potheight+"%")
};


function showherbdesc(description, color) {
    //document.getElementById("descriptionpopup").style.display = "table-cell";
    document.getElementById("descriptionpopup").innerHTML = description;
    document.getElementById("descriptionpopup").style.background = color.replace("rgb(", "rgba(").replace(")", ", 0.5)");
    document.getElementById("descriptionpopup").style.border = "2px solid " + color;
    $("#descriptionpopup").stop(true,true).fadeIn(100).css("display","table-cell");
}
function hide(){
    //document.getElementById("descriptionpopup").style.display = "none";
    $("#descriptionpopup").stop(true,true).fadeOut(100);
}

function add(a, b) {
    return a + b;
}

function orderbutton() {
    if(perc.reduce(add, 0) == 100) {
        $("form").submit();
    } else {
        window.alert('Najpierw napełnij dzbanek!');
    }
}
