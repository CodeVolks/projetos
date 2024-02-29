let input_chamado_cadastro = document.getElementById("input_chamado_cadastro");

// function fundo_amarelo(){
if (window.getComputedStyle(input_chamado_cadastro).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_chamado_cadastro.style.backgroundColor = "var(--amarelo)"
}
// }   