function somar() {
    var N1 = +document.getElementById('N1').value;
    var N2 = +document.getElementById('N2').value;
    document.getElementById('resultado').value = N1+N2;
}
function subtrair() {
    var N1 = +document.getElementById('N1').value;
    var N2 = +document.getElementById('N2').value;
    document.getElementById('resultado').value = N1-N2;
}
function multiplicar() {
    var N1 = +document.getElementById('N1').value;
    var N2 = +document.getElementById('N2').value;
    document.getElementById('resultado').value = N1*N2;
}
function dividir() {
    var N1 = +document.getElementById('N1').value;
    var N2 = +document.getElementById('N2').value;
    document.getElementById('resultado').value = N1/N2;
}