const formulario = document.getElementById('formu');
const inputs = document.querySelectorAll('#formu input');

const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	edad: /^\d{1,2}$/ // 7 a 14 numeros.
}

const campos = {
    usuario: false,
    nombre: false,
    password: false,
    edad: false
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
        case "edad":
            if(expresiones.edad.test(e.target.value)){
                document.getElementById('edad').classList.remove('formulario__input');
                
                document.getElementById('leyenda-peso').classList.add('formulario__input-error');                
                document.getElementById('leyenda-peso').classList.remove('formulario__input-error-activo');

                campos['edad'] = true;
            } else {
                document.getElementById('edad').classList.add('formulario__input');

                document.getElementById('leyenda-peso').classList.remove('formulario__input-error');
                document.getElementById('leyenda-peso').classList.add('formulario__input-error-activo');
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
    if(campos.usuario && campos.nombre && campos.password && campos.edad){
        console.log('buena :D');
    } else {
        e.preventDefault();
        alert('Llena el formulario correctamente.');
        console.log(campos);
    }
});