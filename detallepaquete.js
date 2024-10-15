$(document).ready(function () {
    
    let ControladorContenidoSencillo = 0;
    let ControladorContenidoDoble = 0;
    let ControladorContenidoTriple = 0;
    let AcumuladorHabitacionSencilla = 0;
    let AcumuladorHabitacionDoble = 0;
    let AcumuladorHabitacionTriple = 0;
    let MostrarContenidoHabitacionSencilla = $(".BloqueContenido__SeparadorHabitacionSencilla");
    let MostrarContenidoHabitacionDoble = $(".BloqueContenido__SeparadorHabitacionDoble");
    let MostrarContenidoHabitacionTriple = $(".BloqueContenido__SeparadorHabitacionTriples");
    
    let TotalAPagar = 0;
    // let TotalAdultos = 0;
    let TotalNinos = 0;
    let TotalInfantes = 0;
    let TarifaNumero = parseInt(document.getElementById('Tarifa').innerHTML); 
    let cantidad_Habitaciones_Sencillas = 0;
    let cantidad_Habitaciones_Dobles = 0;
    let cantidad_Habitaciones_Triples = 0;

    $('#AgregarNumeroDeHabitacionesSencillas').on('click', function(e) { 
        cantidad_Habitaciones_Sencillas = $("#NumeroDeHabitacionesSencillas").val();
        if(cantidad_Habitaciones_Sencillas < 1 || cantidad_Habitaciones_Sencillas > 3){
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Ingresar Un Numero Valido",
              });  
        }else{
            document.getElementById("AgregarNumeroDeHabitacionesSencillas").disabled = true;
            document.getElementById("NumeroDeHabitacionesSencillas").disabled = true;
            document.getElementById("EditarNumeroDeHabitacionesSencillas").disabled = false;
            if(ControladorContenidoSencillo == 0){
                ControladorContenidoSencillo = 1;
                MostrarContenidoHabitacionSencilla.toggle();
            }
        }
    }); 

    $('#EditarNumeroDeHabitacionesSencillas').on('click', function(e) { 
        document.getElementById("AgregarNumeroDeHabitacionesSencillas").disabled = false;
        document.getElementById("NumeroDeHabitacionesSencillas").disabled = false;
        document.getElementById("EditarNumeroDeHabitacionesSencillas").disabled = true;
    }); 

    $('#AgregarNumeroDeHabitacionesDobles').on('click', function(e) { 
        cantidad_Habitaciones_Dobles = $("#NumeroDeHabitacionesDobles").val();
        if(cantidad_Habitaciones_Dobles < 1 || cantidad_Habitaciones_Dobles > 3){
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Ingresar Un Numero Valido",
              });  
        }else{
            document.getElementById("AgregarNumeroDeHabitacionesDobles").disabled = true;
            document.getElementById("NumeroDeHabitacionesDobles").disabled = true;
            document.getElementById("EditarNumeroDeHabitacionesDobles").disabled = false;
            if(ControladorContenidoDoble == 0){
                ControladorContenidoDoble = 1;
                MostrarContenidoHabitacionDoble.toggle();
            }
        }
    }); 

    $('#EditarNumeroDeHabitacionesDobles').on('click', function(e) { 
        document.getElementById("AgregarNumeroDeHabitacionesDobles").disabled = false;
        document.getElementById("NumeroDeHabitacionesDobles").disabled = false;
        document.getElementById("EditarNumeroDeHabitacionesDobles").disabled = true;
    }); 

    $('#AgregarNumeroDeHabitacionesTriples').on('click', function(e) { 
        cantidad_Habitaciones_Triples = $("#NumeroDeHabitacionesTriples").val();
        if(cantidad_Habitaciones_Triples < 1 || cantidad_Habitaciones_Triples > 3){
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Ingresar Un Numero Valido",
              });  
        }else{
            document.getElementById("AgregarNumeroDeHabitacionesTriples").disabled = true;
            document.getElementById("NumeroDeHabitacionesTriples").disabled = true;
            document.getElementById("EditarNumeroDeHabitacionesTriples").disabled = false;
            if(ControladorContenidoTriple == 0){
                ControladorContenidoTriple = 1;
                MostrarContenidoHabitacionTriple.toggle();
            }
        }
    }); 

    $('#EditarNumeroDeHabitacionesTriples').on('click', function(e) { 
        document.getElementById("AgregarNumeroDeHabitacionesTriples").disabled = false;
        document.getElementById("NumeroDeHabitacionesTriples").disabled = false;
        document.getElementById("EditarNumeroDeHabitacionesTriples").disabled = true;
    }); 

    // $('#BotonAgregarAdultos').on('click', function(e) { 
    //     let cantidad_de_adultos = $("#CantidadDeAdultos").val();
    //     if(ControladorHabitacionesSencillas == 1){
    //         if(cantidad_de_adultos <= 0 ){
    //             Swal.fire({
    //                 icon: "error",
    //                 title: "Oops...",
    //                 text: "Ingresar Un Numero Valido",
    //               });  
    //         }else{
    //             if(cantidad_de_adultos > 2 || AcumuladorHabitacionSencilla >= 2){
    //                 Swal.fire({
    //                     icon: "error",
    //                     title: "Oops...",
    //                     text: "Excediendo el limite de ocupantes en la habitacion.",
    //                   });  
    //             }else{
    //                 AcumuladorHabitacionSencilla = AcumuladorHabitacionSencilla + parseInt(cantidad_de_adultos);
    //                 console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionSencilla); 
    //                 console.log(AcumuladorHabitacionSencilla);
    //                 TotalAdultos = (parseInt(TarifaNumero) * cantidad_de_adultos);
    //                 console.log(TotalAdultos);
    //                 document.getElementById("CantidadDeAdultos").disabled = true;
    //                 document.getElementById("BotonAgregarAdultos").disabled = true;
    //             }
    //         }
    //     }
    // });

    // ----------------------------------------------------------------------

    $('#BotonAgregarNinos').on('click', function(e) { 
        let cantidad_de_ninos = $("#CantidadDeNinos").val();
            if(cantidad_de_ninos <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_ninos > 2 || AcumuladorHabitacionSencilla >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionSencilla = AcumuladorHabitacionSencilla + parseInt(cantidad_de_ninos);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionSencilla);
                    console.log(AcumuladorHabitacionSencilla);
                    TotalNinos = (parseInt(TarifaNumero) * 0.75)*cantidad_de_ninos;
                    console.log(TotalNinos);
                    document.getElementById("CantidadDeNinos").disabled = true;
                    document.getElementById("BotonAgregarNinos").disabled = true;
                    document.getElementById("EditarNumeroDeNinos").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeNinos').on('click', function(e) { 
        AcumuladorHabitacionSencilla = 0;
        document.getElementById("BotonAgregarNinos").disabled = false;
        document.getElementById("CantidadDeNinos").disabled = false;
        document.getElementById("EditarNumeroDeNinos").disabled = true;
    }); 

    $('#BotonAgregarNinosDobles').on('click', function(e) { 
        let cantidad_de_ninos = $("#CantidadDeNinosDobles").val();
            if(cantidad_de_ninos <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_ninos > 2 || AcumuladorHabitacionDoble >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionDoble = AcumuladorHabitacionDoble + parseInt(cantidad_de_ninos);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionDoble);
                    console.log(AcumuladorHabitacionDoble);
                    TotalNinos = (parseInt(TarifaNumero) * 0.75)*cantidad_de_ninos;
                    console.log(TotalNinos);
                    document.getElementById("CantidadDeNinosDobles").disabled = true;
                    document.getElementById("BotonAgregarNinosDobles").disabled = true;
                    document.getElementById("EditarNumeroDeNinosDobles").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeNinosDobles').on('click', function(e) { 
        AcumuladorHabitacionDoble = 0;
        document.getElementById("BotonAgregarNinosDobles").disabled = false;
        document.getElementById("CantidadDeNinosDobles").disabled = false;
        document.getElementById("EditarNumeroDeNinosDobles").disabled = true;
    });

    $('#BotonAgregarNinosTriples').on('click', function(e) { 
        let cantidad_de_ninos = $("#CantidadDeNinosTriples").val();
            if(cantidad_de_ninos <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_ninos > 2 || AcumuladorHabitacionTriple >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionTriple = AcumuladorHabitacionTriple + parseInt(cantidad_de_ninos);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionTriple);
                    console.log(AcumuladorHabitacionTriple);
                    TotalNinos = (parseInt(TarifaNumero) * 0.75)*cantidad_de_ninos;
                    console.log(TotalNinos);
                    document.getElementById("CantidadDeNinosTriples").disabled = true;
                    document.getElementById("BotonAgregarNinosTriples").disabled = true;
                    document.getElementById("EditarNumeroDeNinosTriples").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeNinosTriples').on('click', function(e) { 
        AcumuladorHabitacionTriple = 0;
        document.getElementById("BotonAgregarNinosTriples").disabled = false;
        document.getElementById("CantidadDeNinosTriples").disabled = false;
        document.getElementById("EditarNumeroDeNinosTriples").disabled = true;
    });

    // ----------------------------------------------------------------------

    $('#BotonAgregarInfantes').on('click', function(e) { 
        let cantidad_de_infantes = $("#CantidadDeInfantes").val();
            if(cantidad_de_infantes <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_infantes > 2 || AcumuladorHabitacionSencilla >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionSencilla = AcumuladorHabitacionSencilla + parseInt(cantidad_de_infantes);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionSencilla);
                    console.log(AcumuladorHabitacionSencilla);
                    TotalInfantes = (parseInt(TarifaNumero) * 0.10)*cantidad_de_infantes;
                    console.log(TotalInfantes);
                    document.getElementById("CantidadDeInfantes").disabled = true;
                    document.getElementById("BotonAgregarInfantes").disabled = true;
                    document.getElementById("EditarNumeroDeInfantes").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeInfantes').on('click', function(e) { 
        AcumuladorHabitacionSencilla = 0;
        document.getElementById("BotonAgregarInfantes").disabled = false;
        document.getElementById("CantidadDeInfantes").disabled = false;
        document.getElementById("EditarNumeroDeInfantes").disabled = true;
    }); 

    $('#BotonAgregarInfantesDobles').on('click', function(e) { 
        let cantidad_de_infantes = $("#CantidadDeInfantesDobles").val();
            if(cantidad_de_infantes <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_infantes > 2 || AcumuladorHabitacionDoble >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionDoble = AcumuladorHabitacionDoble + parseInt(cantidad_de_infantes);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionDoble);
                    console.log(AcumuladorHabitacionDoble);
                    TotalInfantes = (parseInt(TarifaNumero) * 0.10)*cantidad_de_infantes;
                    console.log(TotalInfantes);
                    document.getElementById("CantidadDeInfantesDobles").disabled = true;
                    document.getElementById("BotonAgregarInfantesDobles").disabled = true;
                    document.getElementById("EditarNumeroDeInfantesDobles").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeInfantesDobles').on('click', function(e) { 
        AcumuladorHabitacionDoble = 0;
        document.getElementById("BotonAgregarInfantesDobles").disabled = false;
        document.getElementById("CantidadDeInfantesDobles").disabled = false;
        document.getElementById("EditarNumeroDeInfantesDobles").disabled = true;
    }); 

    $('#BotonAgregarInfantesTriples').on('click', function(e) { 
        let cantidad_de_infantes = $("#CantidadDeInfantesTriples").val();
            if(cantidad_de_infantes <= 0){
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Ingresar Un Numero Valido",
                });  
            }else{
                if(cantidad_de_infantes > 2 || AcumuladorHabitacionTriple >= 2){
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Excediendo el limite de ocupantes en la habitacion.",
                    });  
                }else{
                    AcumuladorHabitacionTriple = AcumuladorHabitacionTriple + parseInt(cantidad_de_infantes);
                    console.log("CANTIDAD DE PERSONAS: "+AcumuladorHabitacionTriple);
                    console.log(AcumuladorHabitacionTriple);
                    TotalInfantes = (parseInt(TarifaNumero) * 0.10)*cantidad_de_infantes;
                    console.log(TotalInfantes);
                    document.getElementById("CantidadDeInfantesTriples").disabled = true;
                    document.getElementById("BotonAgregarInfantesTriples").disabled = true;
                    document.getElementById("EditarNumeroDeInfantesTriples").disabled = false;
                }
            }
    });

    $('#EditarNumeroDeInfantesTriples').on('click', function(e) { 
        AcumuladorHabitacionTriple = 0;
        document.getElementById("BotonAgregarInfantesTriples").disabled = false;
        document.getElementById("CantidadDeInfantesTriples").disabled = false;
        document.getElementById("EditarNumeroDeInfantesTriples").disabled = true;
    });

    // ----------------------------------------------------------------------

    $('#BOTON').on('click', function(e) { 
        TotalAPagar = ((TarifaNumero * 6)*cantidad_Habitaciones_Triples) + ((TarifaNumero * 4)*cantidad_Habitaciones_Dobles) + (cantidad_Habitaciones_Sencillas * TarifaNumero) + TarifaNumero + TotalNinos + TotalInfantes;
        console.log(TotalAPagar);
        document.getElementById("ValorAPagar").textContent="Valor A Pagar: " + TotalAPagar;   
    });

    // ----------------------------------------------------------------------

    // $('#CantidadDeAdultos').on('input', function(e) { 
    //     let OPERACION = (parseInt(TarifaNumero) * $('#CantidadDeAdultos').val());
    //     if(OPERACION > 0){
    //         document.getElementById("PrecioAdultos").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
    //     }else{
    //         document.getElementById("PrecioAdultos").textContent="";   
    //     }
    // });

    // ----------------------------------------------------------------------

    $('#CantidadDeInfantes').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.10)*$('#CantidadDeInfantes').val();
        if(OPERACION > 0){
            document.getElementById("PrecioInfantes").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioInfantes").textContent="";   
        }
    });

    // ----------------------------------------------------------------------

    $('#CantidadDeNinos').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.75)*$('#CantidadDeNinos').val();
        if(OPERACION > 0){
            document.getElementById("PrecioNinos").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioNinos").textContent="";   
        }
    });

    // ----------------------------------------------------------------------

    $('#CantidadDeNinosDobles').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.75)*$('#CantidadDeNinosDobles').val();
        if(OPERACION > 0){
            document.getElementById("PrecioNinosDobles").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioNinosDobles").textContent="";   
        }
    });

    // ----------------------------------------------------------------------

    $('#CantidadDeNinosTriples').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.75)*$('#CantidadDeNinosTriples').val();
        if(OPERACION > 0){
            document.getElementById("PrecioNinosTriples").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioNinosTriples").textContent="";   
        }
    });

    // ----------------------------------------------------------------------

    $('#CantidadDeInfantesDobles').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.10)*$('#CantidadDeInfantesDobles').val();
        if(OPERACION > 0){
            document.getElementById("PrecioInfantesDobles").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioInfantesDobles").textContent="";   
        }
    });

    // ----------------------------------------------------------------------

    $('#CantidadDeInfantesTriples').on('input', function(e) { 
        let OPERACION = (parseInt(TarifaNumero) * 0.10)*$('#CantidadDeInfantesTriples').val();
        if(OPERACION > 0){
            document.getElementById("PrecioInfantesTriples").textContent=OPERACION+"$COP Se le aumentaran al Valor Total de la reserva.";   
        }else{
            document.getElementById("PrecioInfantesTriples").textContent="";   
        }
    });
})
