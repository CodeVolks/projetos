let input_demanda = document.getElementById("input_demanda");

// function fundo_amarelo(){
if (window.getComputedStyle(input_demanda).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_demanda.style.backgroundColor = "var(--amarelo)"
}
// }   