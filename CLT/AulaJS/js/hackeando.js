function hackeando() {
    scrollTo(0, 0);
    document.getElementById("nomeCompleto").innerText = "Pedro Henrique Menezes Silva";
    document.getElementById("navNome").innerText = "Pedro Menezes";
    document.getElementById("navNome").style.color = "red";
    let foto = document.getElementById("foto");
    foto.src = "https://avatars.githubusercontent.com/u/180229310?v=4";
    foto.classList.add("mt-5");
    foto.classList.add("rounded-circle");
    document.getElementById("meuCSS").href = "css/CurriculoPedro.css";
}