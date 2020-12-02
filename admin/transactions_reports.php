<?php
require_once('includes.php');
?>
<link rel="stylesheet" href="assets/css/reports.css">
<!-- Page JS Plugins CSS -->

<main class="app-layout-content">

    <!-- Page Content -->
    <div class="container-fluid p-y-md">
        <!-- Partial Table -->
        <div class="card">
            <div class="card-header">
                <h4>Relatórios de Transações</h4>
                <div class="col-md-6">
                    <div class="form-group">
                            <label class="control-label">Periodo</label>
                            <div class="input-daterange input-group" data-date-format="yyyy-mm-dd">
                                <input class="form-control" type="text" id="start_date" name="start_date" placeholder="Data de Inicio" value="" autocomplete="off">
                                <span class="input-group-addon"><i class="ion-chevron-right"></i></span>
                                <input class="form-control" type="text" id="end_date" name="end_date" placeholder="Data de Fim" value="" autocomplete="off">
                            </div>

                        </div>
                </div>
                <div class="col-md-3">
                    <button class="btn btn-info" id="bt_pesquisar"><i class="ion-search"> </i> Pesquisar</button>
                </div>
            </div>
            <div class="card-block">
                    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th >Nome Produto</th>
                            <th >Username</th>
                            <th >Total</th>
                            <th >Estado</th>
                            <th >Método de Pagamento</th>
                            <th >MSISDN</th>
                            <th>Data</th>
                            <th >Pacote Pago</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Shad Decker</td>
                            <td>Regional Director</td>
                            <td>Edinburgh</td>
                            <td>51</td>
                            <td>51</td>
                            <td>51</td>
                            <td>51</td>
                            <td><span class="btn-warning">Highlight</span></td>

                        </tr>
                        </tbody>
                    </table>


            </div>
            <!-- .card-block -->
        </div>
        <!-- .card -->
        <!-- End Partial Table -->

    </div>
    <!-- .container-fluid -->
    <!-- End Page Content -->

</main>


<?php include("footer.php"); ?>



<script>
    $(function()
    {
        // Init page helpers (Table Tools helper)
        App.initHelpers('table-tools');
        <?php include("datatable-json/transaction_reports_table.js"); ?>
    });

</script>

<script>
    $(function()
    {
        // Init page helpers (BS Datepicker + BS Colorpicker + Select2 + Masked Input + Tags Inputs plugins)
        App.initHelpers(['datepicker', 'select2']);
    });
</script>
</body>

</html>

