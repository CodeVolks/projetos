let input_consulta = document.getElementById("input_consulta");

// function fundo_amarelo(){
if (window.getComputedStyle(input_consulta).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_consulta.style.backgroundColor = "var(--amarelo)"
}
// }   