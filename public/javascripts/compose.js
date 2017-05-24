function showherbdesc(description, color) {
    //document.getElementById("descriptionpopup").style.display = "table-cell";
    document.getElementById("descriptionpopup").innerHTML = description;
    document.getElementById("descriptionpopup").style.background = color;
    //document.getElementById("descriptionpopup").style.border = "2px solid " + color;
    $("#descriptionpopup").fadeIn(100);
}
function hide(){
    //document.getElementById("descriptionpopup").style.display = "none";
    $("#descriptionpopup").fadeOut(100);
}