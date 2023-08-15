 const tipoUsuarioSelect = document.getElementById("tipoUsuario");
        const camposUsuario = document.getElementById("camposUsuario");
        const camposRepartidor = document.getElementById("camposRepartidor");
        const camposCliente = document.getElementById("camposCliente");

        tipoUsuarioSelect.addEventListener("change", function() {
            camposUsuario.style.display = "none";
            camposRepartidor.style.display = "none";
            camposCliente.style.display = "none";

            const tipoUsuario = tipoUsuarioSelect.value;

            if (tipoUsuario === "usuario") {
                camposUsuario.style.display = "block";
            } else if (tipoUsuario === "repartidor") {
                camposRepartidor.style.display = "block";
            } else if (tipoUsuario === "cliente") {
                camposCliente.style.display = "block";
            }
        });
