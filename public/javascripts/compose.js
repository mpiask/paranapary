function showherbdesc(description, color) {
    //document.getElementById("descriptionpopup").style.display = "table-cell";
    document.getElementById("descriptionpopup").innerHTML = description;
    document.getElementById("descriptionpopup").style.background = color.replace("rgb(", "rgba(").replace(")", ", 0.5)");
    document.getElementById("descriptionpopup").style.border = "2px solid " + color;
    $("#descriptionpopup").fadeIn(100).css("display","table-cell");
}
function hide(){
    //document.getElementById("descriptionpopup").style.display = "none";
    $("#descriptionpopup").fadeOut(100);
}