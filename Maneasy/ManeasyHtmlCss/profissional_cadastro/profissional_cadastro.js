let input_profissional = document.getElementById("input_profissional");

// function fundo_amarelo(){
if (window.getComputedStyle(input_profissional).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_profissional.style.backgroundColor = "var(--amarelo)"
}
// }   