var left = 100;

var herbeh = 140; //px //herb 'empty' base height
var potheight = 215*0.01; //px*0.01
var base = (getQueryVariable("base"));
//var base = 1; //id of base herb
var baseperc = 40; //% of base herb
var maxherbs = 4; //max additional herbs in pot

//tu trafi podpięcie do bazy ziółek
var herbs = {
    1: "aloes",
    2: "tatarak",
    3: "dziurawiec",
    4: "głóg",
    5: "szczaw",
    6: "chwast",
    7: "krzak",
    8: "krzew",
    9: "szpinak"
};
var addedi = [base];
var addedp = [baseperc];
var left = 100;

function createslider(i, val){
    $("#slider"+i).slider({
        min: 0, max: 100-baseperc, value: val,
        slide: function(event, ui) {

            id = this.id.slice(-1);
            if(ui.value >= ui.value + left && ui.value > addedp[id]) {
                return false;
            }
            addedp[id]=ui.value;
            updateheights();
        }
    }) //slider end
};

function updateheights(){
    var i = 0;
    var sum = 0;

    left = 100;
    for(i=0;i<addedi.length;i++){
        left-=addedp[i]
    };

    for(i=0;i<=maxherbs;i++){
        if(i<addedi.length) {
            $("#herb"+i).css("height",addedp[i]*potheight+"px")
            document.getElementById("perc"+i).innerHTML = addedp[i] + "%";
            document.getElementById("name"+i).innerHTML = herbs[addedi[i]];
            sum += addedp[i];
        } else {
            $("#herb"+i).css("height","0px");                    
        }
    }
    $("#herbe").css("height",herbeh+(100-sum)*potheight+"px")

};

function updateavailherbs(){
    document.getElementById("availherbs").innerHTML = "";
    Object.keys(herbs).forEach(function(key){
        addedi.indexOf(parseInt(key)) === -1 ? $(".availherbs").append('<div class="availherb"><i class="fa fa-plus" onclick="addherb(' + key + ')"id="addh' + key + '"></i> ' + herbs[key] + '</div>') : {};
    });
};

function updatesliders(){
    for(i=1;i<=maxherbs;i++){
        if(i<addedi.length){
            createslider(i, addedp[i]);
            $('#row'+i).removeClass('hidden');
        } else {
            $('#row'+i).addClass('hidden');                    
        }                
    }

};

function update(){
        updateavailherbs(); 
        updatesliders();           
        updateheights();

}

//add herb
function addherb(i){
    if(addedi.indexOf(i) === -1 && addedi.length <= maxherbs){
        addedi.push(i);
        left > 10 ? addedp.push(10) : addedp.push(left);
        update();
    }
};

function removeherb(i){
    addedi.splice(i,1);
    addedp.splice(i,1);

    update();
};

function getQueryVariable(variable){
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return parseInt(pair[1]);}
    }
    return(false);
};



$( document ).ready( function(){

    update();

    $(".fa").hover(
        function(){ $(this).addClass('hover') },
        function(){ $(this).removeClass('hover') }
    );

});