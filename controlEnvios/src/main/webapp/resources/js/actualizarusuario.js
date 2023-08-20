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
