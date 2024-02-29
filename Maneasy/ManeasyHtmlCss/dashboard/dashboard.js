let input_dashboard = document.getElementById("input_dashboard");

// function fundo_amarelo(){
if (window.getComputedStyle(input_dashboard).backgroundColor == "rgb(255, 255, 255)") {
    // input_projeto.setAttribute( "style", "background-color", "rgb(255 209 0)")
    input_dashboard.style.backgroundColor = "var(--amarelo)"
}
// }   