$(document).ready(function() {
    $('#userTable').DataTable({
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
                    exportOptions: {
                        columns: ':visible'
                    }
                },
                {
                    extend: 'excelHtml5',
                    text: '<i class="fa fa-file-excel-o"></i>',
                    titleAttr: 'Excel',
                    exportOptions: {
                        columns: ':visible'
                    }
                },
                {
                    extend: 'csvHtml5',
                    text: '<i class="fa fa-file-text-o"></i>',
                    titleAttr: 'CSV',
                    exportOptions: {
                        columns: ':visible'
                    }
                },
                {
                    extend: 'pdfHtml5',
                    text: '<i class="fa fa-file-pdf-o"></i>',
                    titleAttr: 'PDF',
                    exportOptions: {
                        columns: ':visible'
                    }
                },
                {
                    extend: 'print',
                    text: '<i class="fa fa-print"></i>',
                    titleAttr: 'Imprimir',
                    exportOptions: {
                        columns: ':visible'
                    }
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

 $(".btn-editar").click(function () {
        var userId = $(this).data("id");
        var nombre = $(this).closest("tr").find("td:eq(1)").text();
        var apellido = $(this).closest("tr").find("td:eq(2)").text();
        var run = $(this).closest("tr").find("td:eq(3)").text();
        var edad = $(this).closest("tr").find("td:eq(4)").text();
        var direccion = $(this).closest("tr").find("td:eq(5)").text();
        var numeroTelefonico = $(this).closest("tr").find("td:eq(6)").text();
        var correoElectronico = $(this).closest("tr").find("td:eq(7)").text();
        var tipoUsuario = $(this).closest("tr").find("td:eq(8)").text();
        var licencia = $(this).closest("tr").find("td:eq(9)").text();
        var vehiculo = $(this).closest("tr").find("td:eq(10)").text();
        var tipoEmpresa = $(this).closest("tr").find("td:eq(11)").text();

        $("#userId").val(userId);
        $("#nombreEdit").val(nombre);
        $("#apellidoEdit").val(apellido);
        $("#runEdit").val(run);
        $("#edadEdit").val(edad);
        $("#direccionEdit").val(direccion);
        $("#numeroTelefonicoEdit").val(numeroTelefonico);
        $("#correoElectronicoEdit").val(correoElectronico);
        $("#tipoUsuarioEdit").val(tipoUsuario);
        $("#licenciaEdit").val(licencia);
        $("#vehiculoEdit").val(vehiculo);
        $("#tipoEmpresaEdit").val(tipoEmpresa);

        $("#editarModal").modal("show");
    });
});


