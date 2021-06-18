/*
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
    alert(contrasena2);

    if(nombre === "" || apmat === "" || appat === "" || 
    peso === "" || estatura === "" || pad === "" || 
    tipoSangre === "" || usuario === "" || contrasena === "" || contrasena2 === ""){
        alert('Todos los campos son obligatorios');
        return false;
    }
    else if(contrasena != contrasena2){
        alert('Las contraseñas no coinciden.');
    }
    else if(expNombre.test(nombre)){
        alert('Nombre no válido.');
        return false;
    }
}
*/

const formulario = document.getElementById('formu');
const inputs = document.querySelectorAll('#formu input');

const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	telefono: /^\d{2,4}$/, // 7 a 14 numeros.
    altura: /^\d{2,3}$/ // 7 a 14 numeros.
}

const campos = {
    usuario: false,
    nombre: false,
    password: false,
    telefono: false,
    altura: false
}

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "nombre":
            if(expresiones.nombre.test(e.target.value)){
                document.getElementById('nombre').classList.remove('formulario__input');
                
                document.getElementById('leyenda-nombre').classList.add('formulario__input-error');
                document.getElementById('leyenda-nombre').classList.remove('formulario__input-error-activo');

                campos['nombre'] = true;
            } else {
                document.getElementById('nombre').classList.add('formulario__input');

                document.getElementById('leyenda-nombre').classList.remove('formulario__input-error');
                document.getElementById('leyenda-nombre').classList.add('formulario__input-error-activo');
            }
        break;
        case "appat":
            if(expresiones.nombre.test(e.target.value)){
                document.getElementById('pat_usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-app').classList.add('formulario__input-error');                
                document.getElementById('leyenda-app').classList.remove('formulario__input-error-activo');

                campos['nombre'] = true;
            } else {
                document.getElementById('pat_usu').classList.add('formulario__input');

                document.getElementById('leyenda-app').classList.remove('formulario__input-error');
                document.getElementById('leyenda-app').classList.add('formulario__input-error-activo');

                campos['nombre'] = false;
            }
        break;
        case "apmat":
            if(expresiones.nombre.test(e.target.value)){
                document.getElementById('mat_usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-app').classList.add('formulario__input-error');                
                document.getElementById('leyenda-app').classList.remove('formulario__input-error-activo');

                campos['nombre'] = true;
            } else {
                document.getElementById('mat_usu').classList.add('formulario__input');

                document.getElementById('leyenda-app').classList.remove('formulario__input-error');
                document.getElementById('leyenda-app').classList.add('formulario__input-error-activo');

                campos['nombre'] = false;
            }
        break;
        case "peso":
            if(expresiones.telefono.test(e.target.value)){
                document.getElementById('peso_usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-peso').classList.add('formulario__input-error');                
                document.getElementById('leyenda-peso').classList.remove('formulario__input-error-activo');

                campos['telefono'] = true;
            } else {
                document.getElementById('peso_usu').classList.add('formulario__input');

                document.getElementById('leyenda-peso').classList.remove('formulario__input-error');
                document.getElementById('leyenda-peso').classList.add('formulario__input-error-activo');
            }        
        break;
        case "estatura":
            if(expresiones.altura.test(e.target.value)){
                document.getElementById('estatura_usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-altura').classList.add('formulario__input-error');                
                document.getElementById('leyenda-altura').classList.remove('formulario__input-error-activo');

                campos['altura'] = true;
            } else {
                document.getElementById('estatura_usu').classList.add('formulario__input');

                document.getElementById('leyenda-altura').classList.remove('formulario__input-error');
                document.getElementById('leyenda-altura').classList.add('formulario__input-error-activo');
            }
        break;
        case "usuario":
            if(expresiones.usuario.test(e.target.value)){
                document.getElementById('usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-usu').classList.add('formulario__input-error');                
                document.getElementById('leyenda-usu').classList.remove('formulario__input-error-activo');

                campos['usuario'] = true;
            } else {
                document.getElementById('usu').classList.add('formulario__input');

                document.getElementById('leyenda-usu').classList.remove('formulario__input-error');
                document.getElementById('leyenda-usu').classList.add('formulario__input-error-activo');
            }
        break;
        case "contrasena":
            if(expresiones.password.test(e.target.value)){
                document.getElementById('pass_usu').classList.remove('formulario__input');
                
                document.getElementById('leyenda-pass').classList.add('formulario__input-error');                
                document.getElementById('leyenda-pass').classList.remove('formulario__input-error-activo');

                campos['password'] = true;
            } else {
                document.getElementById('pass_usu').classList.add('formulario__input');

                document.getElementById('leyenda-pass').classList.remove('formulario__input-error');
                document.getElementById('leyenda-pass').classList.add('formulario__input-error-activo');
            }
            validarPassword2();
        break;
        case "contrasena2":
           validarPassword2();
        break;
    }
}

const validarPassword2 = () => {
    const inputPassword1 = document.getElementById('pass_usu');
    const inputPassword2 = document.getElementById('pass2_usu');

    if (inputPassword1.value !== inputPassword2.value) {
        document.getElementById('pass2_usu').classList.add('formulario__input');

        document.getElementById('leyenda-pass2').classList.remove('formulario__input-error');
        document.getElementById('leyenda-pass2').classList.add('formulario__input-error-activo');

        campos['password'] = false;
    } else {
        document.getElementById('pass2_usu').classList.remove('formulario__input');

        document.getElementById('leyenda-pass2').classList.remove('formulario__input-error-activo');
        document.getElementById('leyenda-pass2').classList.add('formulario__input-error');        
        
        campos['password'] = true;
    }

}

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('submit', (e) => {
    

    if(campos.usuario && campos.nombre && campos.password && campos.telefono && campos.altura){
        console.log('buena :D');
    } else {
        e.preventDefault();
        alert('Llena el formulario correctamente.');
    }
});