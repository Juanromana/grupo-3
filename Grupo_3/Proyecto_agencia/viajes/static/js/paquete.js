$(document).ready(function () { // lea el documento del html
    $(document).on("input", "input[id^='id_hospedajeacomodacion_set-'][id$='-tarifa_agencia']",
        function () {
            let tarifa_agencia = $(this);
            let id = tarifa_agencia.attr('id').match(/\d+/); //attr = traer todo lo que tiene y lo ubica match= coje la parte numerica de la informacion y para determinar el id
            let tarifa_hospedaje = $("#id_hospedajeacomodacion_set-" + id + "-tarifa");

            let tarifa = tarifa_agencia.val();
            tarifa_hospedaje.val((tarifa * 1.2).toFixed(0));
            console.log("tarifa_agencia", tarifa_agencia.val());
            console.log("tarifa_hospedaje", tarifa_hospedaje.val());
        }
    );
});