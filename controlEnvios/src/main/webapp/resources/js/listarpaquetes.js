$(document).ready(function() {
    $('table').DataTable({
        responsive: true,
        dom: 'Bfrtip',
        buttons: {
            dom: {
                container: {
                    tag: 'div',
                    className: 'flexcontent'
                },
                buttonLiner: {
                    tag: null
                }
            },
            buttons: [
                {
                    extend: 'copyHtml5',
                    text: '<i class="fa fa-files-o"></i>',
                    titleAttr: 'Copy',
                    exportOptions: {}
                },
                {
                    extend: 'excelHtml5',
                    text: '<i class="fa fa-file-excel-o"></i>',
                    titleAttr: 'Excel',
                    exportOptions: {}
                },
                {
                    extend: 'csvHtml5',
                    text: '<i class="fa fa-file-text-o"></i>',
                    titleAttr: 'CSV',
                    exportOptions: {}
                },
                {
                    extend: 'pdfHtml5',
                    text: '<i class="fa fa-file-pdf-o"></i>',
                    titleAttr: 'PDF',
                    exportOptions: {}
                },
                {
                    extend: 'print',
                    text: '<i class="fa fa-print"></i>',
                    titleAttr: 'Imprimir',
                    exportOptions: {}
                }
            ]
        },
        language: {
            buttons: {
                copyTitle: 'Copiar al portapapeles',
                copySuccess: {
                    _: '%d filas copiadas',
                    1: '1 fila copiada'
                }
            },
            search: 'Buscar:',
            lengthMenu: 'Mostrar _MENU_ registros por página',
            info: 'Mostrando _START_ al _END_ de _TOTAL_ registros',
            infoEmpty: 'Mostrando 0 al 0 de 0 registros',
            infoFiltered: '(filtrado de _MAX_ registros en total)',
            paginate: {
                first: 'Primero',
                last: 'Último',
                next: 'Siguiente',
                previous: 'Anterior'
            }
        }
    });

$(document).ready(function() {
    // Tu código de EventListener aquí
});

    const modal = document.getElementById("modal");
    const inputs = modal.querySelectorAll("input");
    let count = 0;

    window.addEventListener("click", (e) => {
      if (e.target.matches(".btn-editar")) {
			console.log("Botón Editar clickeado");
			let data = e.target.parentElement.parentElement.children;
			fillData(data);
			modal.style.display = "block"; // Mostrar el modal
			modal.classList.toggle("translate"); // Animación para mostrarlo
		}
        if (e.target.matches(".btn-danger")) {
            modal.classList.toggle("translate"); // Animación para ocultarlo
            setTimeout(() => {
                modal.style.display = "none"; // Ocultar el modal después de la animación
            }, 400); // Ajusta el tiempo para que coincida con la duración de la animación en CSS
            count = 0;
        }
    });

    const fillData = (data) => {
        for (let index of inputs) {
            index.value = data[count].textContent;
            count += 1;
        }
    }
});

const btnCrear = document.querySelector(".btn.btn-primary.btn-sm");
const btnCerrarModalCrear = document.querySelector("#modalCrear .btn-primary.close-btn");

btnCrear.addEventListener("click", () => {
    modalCrear.style.display = "block"; // Mostrar el modal
    modalCrear.classList.toggle("translate"); // Animación para mostrarlo
});

btnCerrarModalCrear.addEventListener("click", () => {
    modalCrear.classList.toggle("translate"); // Animación para ocultarlo
    setTimeout(() => {
        modalCrear.style.display = "none"; // Ocultar el modal después de la animación
    }, 400); // Ajusta el tiempo para que coincida con la duración de la animación en CSS
});
