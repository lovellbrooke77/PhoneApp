//Changes the size of p and the id of id when
//a person changes the window size
var x = 0;
window.addEventListener("resize", myFunction);
function myFunction{
    var text = x += 1;
    document.getElementsByClassName(registerContainer).innerHTML = text;
}
var div = document.getElementsByClassName('registerContainer');
up.innerHTML = "Resize the window to change" +
    "the font-size based on window-size";
div = setWidth = function (width) {
    var size = this.offsetWidth,
       width_size = size * width;
    this.style.widthSize = width_size + '%';
    return this
};div.setwidth(0.50);
window.onresize = function () {
    div.setwidth(0.50);
}
function ChangeColor(color) {
    document.getElementsByClassName("register").body.style.background = "#0F52BA";
}

