// $(document).ready(function () {
//     $('#botonbusc').on('click', function (e) {
//         let Busqueda = $('.nombredelinput').val().trim(); // Obtiene el elemento input usando jQuery
//         if (Busqueda === "") { // Valida si el campo está vacío
//             e.preventDefault(); // Evita que se envíe el formulario
//             e.stopPropagation(); // Detiene la propagación del evento
//             Swal.fire({   // Muestra una alerta de error con SweetAlert2
//                 icon: "error",
//                 title: "Oops",
//                 text: "Por favor, agrega un paquete.",
//             });
//             return; // Detiene la ejecución del código
//         } else { // Si el campo no está vacío, puedes continuar con la búsqueda
//             console.log(Busqueda);
//        }
//     });

//  $('#nombredelinput').on('input', function () {      
//       });
// })
$(document).ready(function () {
    $('#botonbusc').on('click', function (e) {
        let Busqueda = $('.nombredelinput')[0];
        let bus = $('.nombredelinput').val();
        if (!Busqueda.checkValidity()) {
            e.preventDefault()
            e.stopPropagation()
            Swal.fire({
                icon: "error",
                title: "Oops",
                text: "por favor agrega un paquete",
            });
            return; //detener
        } else {
            console.log(bus);
        }
    });

    $('#nombredelinput').on('input', function () {
    });
})