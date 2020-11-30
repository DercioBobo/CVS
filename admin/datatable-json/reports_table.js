var idioma=

    {
        "sProcessing":     "Procesando...",
        "sLengthMenu":     "Mostrar _MENU_ registros",
        "sZeroRecords":    "Sem Dados",
        "sEmptyTable":     "Sem Dados",
        "sInfo":           "Mostrando Dados de _START_ a _END_ de um total de _TOTAL_",
        "sInfoEmpty":      "Mostrando Dados de 0 a 0 de um total de 0",
        "sInfoFiltered":   "(filtrando de un total de _MAX_ dados)",
        "sInfoPostFix":    "",
        "sSearch":         "Pesquisar:",
        "sUrl":            "",
        "sInfoThousands":  ",",
        "sLoadingRecords": "Carregando...",
        "oPaginate": {
            "sFirst":    "Primeiro",
            "sLast":     "Último",
            "sNext":     "Seguinte",
            "sPrevious": "Anterior"
        },
        "buttons": {

            "pageLength": {
                "_": "Mostrar %d",
                "-1": "Mostrar Tudo"
            }
        }
    };

$(document).ready(function() {


    var table = $('#example').DataTable( {

        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": true,
        "language": idioma,
        "lengthMenu": [[25,50,100, -1],[25,50,100,"Mostrar Tudo"]],
        dom: 'Bfrt<"col-md-8 inline"i> <"col-md-8 inline"p>',


        buttons: {
            dom: {
                container:{
                    tag:'div',
                    className:'flexcontent'
                },
                buttonLiner: {
                    tag: null
                }
            },




            buttons: [

                {
                    extend:    'pdfHtml5',
                    text:      '<i class="fa fa-file-pdf-o"></i>PDF',
                    title:'Relatório em pdf',
                    titleAttr: 'PDF',
                    className: 'btn btn-app export pdf',

                },

                {
                    extend:    'excelHtml5',
                    text:      '<i class="fa fa-file-excel-o"></i>Excel',
                    title:'Relatório em excel',
                    titleAttr: 'Excel',
                    className: 'btn btn-app export excel',
                },
                {
                    extend:    'print',
                    text:      '<i class="fa fa-print"></i>Imprimir',
                    title:'Relatório em Impressão',
                    titleAttr: 'Imprimir',
                    className: 'btn btn-app export imprimir',
                },
                {
                    extend:    'pageLength',
                    titleAttr: 'Registros a mostrar',
                    className: 'selectTable'
                }
            ]


        }














    });


} );
