let input_squad = document.getElementById("input_squad");

// function fundo_amarelo(){
if (window.getComputedStyle(input_squad).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_squad.style.backgroundColor = "var(--amarelo)"
}
// }   