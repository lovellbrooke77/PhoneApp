//Changes the size of p and the id of id when
//a person changes the window size
//var x = 0;
//window.addEventListener("resize", myFunction);
//function myFunction{
//    var text = x += 1;
//    document.getElementsByClassName(registerContainer).innerHTML = text;
//}
//var div = document.getElementsByClassName('registerContainer');
//up.innerHTML = "Resize the window to change" +
//    "the font-size based on window-size";
//div = setWidth = function (width) {
//    var size = this.offsetWidth,
//       width_size = size * width;
//    this.style.widthSize = width_size + '%';
//    return this
//};div.setwidth(0.50);
//window.onresize = function () {
//    div.setwidth(0.50);
//}


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
    document.getElementById('register').style.backgroundColor = "#0F52BA";

    //Sets the background for the body id's to the color of #0F52BA on the login and registration pages
    document.getElementById('pageContainer').style.backgroundColor = "gainsboro";
}
function ChangeColor1() {
    document.getElementById('pageContainer').style.backgroundColor = "gainsboro";
}
