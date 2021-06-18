function validar() {
    var nombre, apmat, appat, peso, estatura, pad, tipoSangre, usuario, contrasena, contrasena2;
    
    const exp = {
        nombreE: /^[a-zA-ZÀ-ÿ\s]{1,40}$/,
        passE: /^.{4,12}$/,
	    correoE: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
    }

    expNombre = /^[a-zA-ZÀ-ÿ\s]{1,40}$/;

    nombre = document.getElementById('nom_usu').value;
    apmat = document.getElementById('mat_usu').value;
    appat = document.getElementById('pat_usu').value;
    peso = document.getElementById('peso_usu').value;
    estatura = document.getElementById('estatura_usu').value;
    pad = document.getElementById('pad_usu').value;
    tipoSangre = document.getElementById('sangre_usu').value;
    usuario = document.getElementById('usu').value;
    contrasena = document.getElementById('pass_usu').value;
    contrasena2 = document.getElementById('pass2_usu').value;    

    /*alert(nombre);
    alert(contrasena);
    alert(contrasena2);*/

    if(nombre === "" || apmat === "" || appat === "" || 
    peso === "" || estatura === "" || pad === "" || 
    tipoSangre === "" || usuario === "" || contrasena === "" || contrasena2 === ""){
        alert('Todos los campos son obligatorios');
        return false;
    }
    else if(contrasena =! contrasena2){
        alert('Las contraseñas no coinciden.');
    }
    else if(expNombre.test(nombre)){
        alert('Nombre no válido.');
        return false;
    }
}
