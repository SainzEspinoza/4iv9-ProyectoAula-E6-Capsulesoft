function validar() {
    var nombre, apmat, appat, peso, estatura, pad, tipoSangre, usuario, contrasena, contrasena2;
    var expresion;

    nombre = document.getElementById('no_usu').value;
    apmat = document.getElementById('mat_usu').value;
    appat = document.getElementById('pat_usu').value;
    peso = document.getElementById('peso_usu').value;
    estatura = document.getElementById('estatura_usu').value;
    pad = document.getElementById('pad_usu').value;
    tipoSangre = document.getElementById('sangre_usu').value;
    usuario = document.getElementById('usu').value;
    contrasena = document.getElementById('pass_usu').value;
    contrasena2 = document.getElementById('pass2_usu').value;

    if(nombre === "" || apmat === "" || appat === "" || 
    peso === "" || estatura === "" || pad === "" || 
    tipoSangre === "" || usuario === "" || contrasena === "" || contrasena2 === ""){
        alert('me comi una salchipapa')
    }
}
