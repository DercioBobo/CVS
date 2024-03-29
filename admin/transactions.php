<?php
require_once('includes.php');

?>
<!-- Page JS Plugins CSS -->

<main class="app-layout-content">

    <!-- Page Content -->
    <div class="container-fluid p-y-md">
        <!-- Partial Table -->
        <div class="card fullw">
            <div class="card-header">
                <h4>Transactions</h4>
                <div class="pull-left">
                    <a href="#"  data-url="panel/manual_transaction"data-toggle="slidePanel" class="btn btn-success waves-effect waves-light m-r-10">Adicionar Manualmente</a>
                </div>
            </div>

            <div class="card-block">
                <div id="js-table-list">
                    <table id="ajax_datatable" data-jsonfile="transaction.php" class="js-table-checkable table table-vcenter table-hover" data-tablesaw-mode="stack" data-plugin="animateList" data-animate="fade" data-child="tr" data-selectable="selectable">
                        <thead>
                        <tr>
                            <th class="text-center w-5 sortingNone">
                                <label class="css-input css-checkbox css-checkbox-default m-t-0 m-b-0">
                                    <input type="checkbox" id="check-all" name="check-all"><span></span>
                                </label>
                            </th>
                            <th class="sortingNone">Title</th>
                            <th class="sortingNone">Username</th>
                            <th class="sortingNone">Amount</th>
                            <th class="sortingNone">Destaque</th>
                            <th class="sortingNone">Status</th>
                            <th class="sortingNone">Pay Method</th>
                            <th class="sortingNone">Time</th>
                            <th class="sortingNone">MSISDN</th>
                            <th class="sortingNone">Transaction ID</th>
                            <th class="sortingNone">Conversation ID</th>
                            <th class="sortingNone">Response Desc.</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody id="ajax-services">

                        </tbody>
                    </table>

                </div>


            </div>
            <!-- .card-block -->
        </div>
        <!-- .card -->
        <!-- End Partial Table -->

    </div>
    <!-- .container-fluid -->
    <!-- End Page Content -->

</main>

<!-- Site Action -->
<div class="site-action">
    <button type="button" class="site-action-toggle btn-raised btn btn-success btn-floating" style="visibility: hidden">
        <i class="back-icon ion-android-close animation-scale-up" aria-hidden="true"></i>
    </button>
    <div class="site-action-buttons">
        <button type="button" data-ajax-response="deletemarked" data-ajax-action="deleteTransaction"
                class="btn-raised btn btn-danger btn-floating animation-slide-bottom">
            <i class="icon ion-android-delete" aria-hidden="true"></i>
        </button>
    </div>
</div>
<!-- End Site Action -->

<?php include("footer.php"); ?>


<script>
    $(function()
    {
        // Init page helpers (Table Tools helper)
        App.initHelpers('table-tools');
    });
</script>
</body>

</html>
