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
                <h4>Relatórios De Anúncios</h4>
                <div class="col-md-6">
                    <div class="form-group">
                            <label class="control-label">Periodo</label>
                            <div class="input-daterange input-group" data-date-format="mm/dd/yyyy">
                                <input class="form-control" type="text" id="example-daterange1" name="start_date" placeholder="Data de Inicio" value="" autocomplete="off" placeholder="dd/mm/yyyy">
                                <span class="input-group-addon"><i class="ion-chevron-right"></i></span>
                                <input class="form-control" type="text" id="example-daterange2" name="end_date" placeholder="Data de Fim" value="" autocomplete="off" placeholder="dd/mm/yyyy">
                            </div>

                        </div>
                </div>
                <div class="col-md-3">
                    <button class="btn btn-info"><i class="ion-search"> </i> Pesquisar</button>
                </div>
            </div>
            <div class="card-block">
                    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Usernam</th>
                            <th>Preço</th>
                            <th>Categoria</th>
                            <th>Visualizações</th>
                            <th>Data</th>
                            <th>Expira</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Shad Decker</td>
                            <td>Regional Director</td>
                            <td>Edinburgh</td>
                            <td>51</td>
                            <td>2008/11/13</td>
                            <td>$183,000</td>
                            <td>$183,000</td>
                        </tr>
                        <tr>
                            <td>Michael Bruce</td>
                            <td>Javascript Developer</td>
                            <td>Singapore</td>
                            <td>29</td>
                            <td>2011/06/27</td>
                            <td>$183,000</td>
                        </tr>
                        <tr>
                            <td>Donna Snider</td>
                            <td>Customer Support</td>
                            <td>New York</td>
                            <td>27</td>
                            <td>2011/01/25</td>
                            <td>$112,000</td>
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
        <?php include ("datatable-json/reports_table.js"); ?>
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

