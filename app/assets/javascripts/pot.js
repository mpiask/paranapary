var herbeh = 0; //px //herb 'empty' base height
var potheight = 1; //px*0.01
var baseperc = 40; //% of base herb
var cap = 0;
var availableTotal = 100 - baseperc;
var init_value = 15;

function updatesliders(){
    var sliders = $(".slider");
    sliders.each(function() {
      var id = $(this).attr('id').slice(-1);
      $(this).slider({
          min: 0, max: availableTotal, value: init_value, step: 1,
          slide: function(event, ui) {

              var total = 0;

              sliders.not(this).each(function() {
                  total += $(this).slider("option", "value");
              });
              total += ui.value;

              var delta = availableTotal - total;


              sliders.not(this).each(function() {
                  var t = $(this),
                      value = t.slider("option", "value");

                  var new_value = value + (delta/2);

                  if (new_value < 0 || ui.value == 100)
                      new_value = 0;
                  if (new_value > 100)
                      new_value = 100;

                  t.siblings('.value').text(new_value);
                  t.slider('value', new_value);

                  updateheight(t.attr('id').slice(-1), new_value)
              });
              total = 0;
              sliders.each(function() {
                  total += $(this).slider("option", "value");
              });
              updateheight(id, ui.value);
              return true;
          },
          start: function(event, ui) {
              $("#potperc").stop(true,true).fadeIn("fast");
          },
          stop: function(event, ui) {
              $("#potperc").stop(true,true).fadeOut("fast");
              $("input#quantity"+id).val(ui.value);
          }
      })
    });
};

function updateheight(id, val){
    $("#herb"+id).css("height",val*potheight+"%");
    document.getElementById("percent"+id).innerHTML = val+"%";
    document.getElementById("potperc").innerHTML = val+"%";
};

function fillthepot() {
  for(i=0;i<=3;i++){
    updateheight(i, init_value)
  }
  $("#herb"+4).css("height",baseperc*potheight+"%");
  document.getElementById("percent4").innerHTML = baseperc+"%";
  $("#herbe").css("height",0*potheight+"%");
}

function showherbdesc(description, color) {
    document.getElementById("descriptionpopup").innerHTML = description;
    document.getElementById("descriptionpopup").style.background = color.replace("rgb(", "rgba(").replace(")", ", 0.5)");
    document.getElementById("descriptionpopup").style.border = "2px solid " + color;
    $("#descriptionpopup").stop(true,true).fadeIn(100).css("display","table-cell");
}
function hide(){
    $("#descriptionpopup").stop(true,true).fadeOut(100);
}

function orderbutton() {
    $("form").submit();
}
