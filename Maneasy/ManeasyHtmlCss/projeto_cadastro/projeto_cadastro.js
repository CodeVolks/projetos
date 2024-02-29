let input_projeto = document.getElementById("input_projeto");

// function fundo_amarelo(){
if (window.getComputedStyle(input_projeto).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_projeto.style.backgroundColor = "var(--amarelo)"
}
// }   