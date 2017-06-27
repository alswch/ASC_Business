window.onload = function(e){
    console.log("window.onload");
}

$(document).ready(function() {
  console.log("jQuery ready");

var modal = document.getElementById('modalPage')
// document.getElementById('registerLink').addEventListener("click", show_registerModal)
$('#registerLink').click(show_registerModal)

function show_registerModal() {
  console.log("==show_registerModal==");
  modal.style.display = "block"
}

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

}); //CLOSES jQuery
