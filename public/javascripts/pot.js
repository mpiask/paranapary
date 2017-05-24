function createslider(i){
    $("#slider"+i).slider({
        min: 0, max: 60/*,
        slide: function(event, ui) {

            id = this.id.slice(-1);
            if(ui.value >= ui.value + left && ui.value > addedp[id]) {
                return false;
            }
            addedp[id]=ui.value;
            updateheights();
        }*/
    }) //slider end
};

function updatesliders(){
    for(i=0;i<=3;i++){
        createslider(i);
    }

};


$( document ).ready( function(){

    updatesliders();

});


//wyrenderować slajdery
//zrobić animację zawartości
//wyjaśnić łamanie wierszy
//wyjaśnić upcase polskich znaków
//przetransferować kolor tła popupu w rgba