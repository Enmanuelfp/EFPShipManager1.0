const tipoUsuarioSelect = document.getElementById("tipoUsuarioSelect");
const camposRepartidor = document.getElementById("camposRepartidor");
const camposCliente = document.getElementById("camposCliente");

tipoUsuarioSelect.addEventListener("change", function() {
    camposRepartidor.style.display = "none";
    camposCliente.style.display = "none";

    const tipoUsuario = tipoUsuarioSelect.value;

    if (tipoUsuario === "Repartidor") {
        camposRepartidor.style.display = "block";
    } else if (tipoUsuario === "Cliente") {
        camposCliente.style.display = "block";
    }
});
        function mostrarAlerta() {
            Swal.fire({
                icon: 'success',
                title: '¡Enviado!',
                text: '¡Los datos han sido enviados correctamente!',
                timer: 4000,
                showConfirmButton: false,
                width: 300,
                heightAuto: false
            });
        }
    