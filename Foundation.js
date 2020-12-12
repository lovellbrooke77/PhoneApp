
//cancel to erase information out of username and password. 
//Information from search page if user clicks cancel.
function cancel() {
    document.getElementById("form1").reset();

}
function RegisterCancel() {
    document.getElementById("form1").reset();
}

//Changes the color of a specific area that is selected.
function ChangeColor() {

    //This sets the background for the register id's to the color of #0F52BA on the login and registration pages
    //document.getElementById('register').style.backgroundColor = "#0F52BA";

    //Sets the background for the body id's to the color of #0F52BA on the login and search pages

    document.getElementById('pageContainer').style.backgroundColor = "gainsboro";

    
}
