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


        /*buttons: {
            dom: {
                container:{
                    tag:'div',
                    className:'flexcontent'
                },
                buttonLiner: {
                    tag: null
                }
            },*/




            buttons: [
                // 'copy', 'excel', 'pdf'

                {
                    extend:    'pdfHtml5',
                    text:      '<i class="fa fa-file-pdf-o"></i>PDF',
                    title:'Relatório de utilizadores - pdf',
                    titleAttr: 'PDF',
                    className: 'btn btn-app export pdf',

                },

                {
                    extend:    'excelHtml5',
                    text:      '<i class="fa fa-file-excel-o"></i>Excel',
                    title:'Relatório de utilizadores - excel',
                    titleAttr: 'Excel',
                    className: 'btn btn-app export excel',
                },
                {
                    extend:    'print',
                    text:      '<i class="fa fa-print"></i>Imprimir',
                    title:'Relatório de utilizadores - Impressão',
                    titleAttr: 'Imprimir',
                    className: 'btn btn-app export imprimir',
                },
                {
                    extend:    'pageLength',
                    titleAttr: 'Registros a mostrar',
                    className: 'selectTable'
                }
            ]



    });


    $('#bt_pesquisar').on('click', function () {


        var data_inicio = $('#start_date').val();
        var data_fim = $('#end_date').val();
        var type = 'users';

        $.ajax({
            type: "POST",
            url: 'datatable-json/admin_reports.php',
            data: {
                "type": type,
                "startdate": data_inicio,
                "enddate": data_fim

            },
            beforeSend: function(){

                $('#carregamento').css("display","block");

            },
            complete: function(){

                $('#carregamento').css("display","none");

            },
            success: function (response) {

                var result = JSON.parse(response);

                if(result.status){

                    var users = result.message;

                    table.clear();

                    for (var i=0; i<users.length; i++){


                        table.row.add([
                            users[i].nome,
                            users[i].username,
                            users[i].email,
                            users[i].contacto,
                            users[i].genero,
                            users[i].provincia,
                            users[i].estado,
                            users[i].nr_posts,
                            users[i].ultimo_acesso

                        ]);


                    }

                    table.draw(true);



                }else{

                    swal({
                        title: "Erro!",
                        text: "Ocorreu um erro ao gerar o relatório",
                        icon: "error",
                        button: "Ok!"
                    }, function () {


                    });

                }




            },
            error: function () {

                alert("ocorreu um erro");

                return false;
            }
        });

    });





} );
