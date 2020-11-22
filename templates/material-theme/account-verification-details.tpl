{OVERALL_HEADER}
<div id="page-content">
    <div class="container">
        <ul class="breadcrumb bcstyle2">
            <li><a href="{LINK_INDEX}">{LANG_HOME}</a></li>
            <li class="active"><a>{LANG_ACCOUNT_VERIFICATION_DETAILS}</a></li>
        </ul>
        <a href="{LINK_POST-AD}" class="postadinner"><span> <i
                        class="fa fa-plus-circle"></i>   {LANG_POST_AD}</span></a>
        <!--end breadcrumb-->
        <section class="page-title center"><h2>{LANG_ACCOUNT_VERIFICATION_DETAILS}</h2></section>
        <!--end page-title-->
        <section>
            <div class="row">
                <aside class="col-md-3 col-sm-12">
                    <div class="inner-box">
                        <div class="user-panel-sidebar">
                            <div class="collapse-box">
                                <h5 class="collapse-title no-border"> {LANG_MY_CLASSIFIED} <a class="pull-right"
                                                                                              data-toggle="collapse"
                                                                                              href="#MyClassified"><i
                                                class="fa fa-angle-down"></i></a></h5>
                                <div id="MyClassified" class="panel-collapse collapse in">
                                    <ul class="acc-list">
                                        <li><a href="{LINK_DASHBOARD}" class="waves-effect"><i
                                                        class="fa fa-home"></i> {LANG_DASHBOARD}</a></li>
                                        <li><a href="{LINK_PROFILE}/{USERNAME}" class="waves-effect"><i
                                                        class="fa fa-user"></i> {LANG_PROFILE_PUBLIC}</a></li>
                                        <li><a href="{LINK_POST-AD}" class="waves-effect"><i
                                                        class="fa fa-pencil"></i> {LANG_POST_AD}</a></li>
                                        <!--<li><a href="{LINK_MEMBERSHIP}" class="waves-effect"><i
                                                        class="fa fa-shopping-bag"></i> {LANG_MEMBERSHIP} </a></li>-->
                                    </ul>
                                </div>
                            </div>
                            <div class="collapse-box"><h5 class="collapse-title"> {LANG_MY_ADS} <a class="pull-right"
                                                                                                   data-toggle="collapse"
                                                                                                   href="#MyAds"><i
                                                class="fa fa-angle-down"></i></a></h5>

                                <div id="MyAds" class="panel-collapse collapse in">
                                    <ul class="acc-list">
                                        <li><a href="{LINK_MYADS}" class="waves-effect"><i
                                                        class="fa fa-book"></i> {LANG_MY_ADS}<span
                                                        class="badge">{MYADS}</span> </a></li>
                                        <!--<li><a href="{LINK_FAVADS}" class="waves-effect"><i
                                                        class="fa fa-heart"></i> {LANG_FAVOURITE_ADS} <span
                                                        class="badge">{FAVORITEADS}</span> </a></li> -->
                                        <li><a href="{LINK_PENDINGADS}" class="waves-effect"><i
                                                        class="fa fa-flag"></i> {LANG_PENDING_APPROVAL}<span
                                                        class="badge">{PENDINGADS}</span></a></li>
                                        <li><a href="{LINK_HIDDENADS}" class="waves-effect"><i
                                                        class="fa fa-flag"></i> {LANG_HIDDEN_ADS} <span
                                                        class="badge">{HIDDENADS}</span></a></li>
                                        <li><a href="{LINK_EXPIREADS}" class="waves-effect"><i
                                                        class="fa fa-calendar-times-o"></i> {LANG_EXPIRE_ADS} <span
                                                        class="badge">{EXPIREADS}</span></a>
                                        <li><a href="{LINK_RESUBMITADS}" class="waves-effect"><i
                                                        class="fa fa-flag"></i> {LANG_RESUBMITED_ADS} <span
                                                        class="badge">{RESUBMITADS}</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="collapse-box">
                                <h5 class="collapse-title no-border"> {LANG_MY_ACCOUNT} <a class="pull-right"
                                                                                           data-toggle="collapse"
                                                                                           href="#account"><i
                                                class="fa fa-angle-down"></i></a></h5>
                                <div id="account" class="panel-collapse collapse in">
                                    <ul class="acc-list">
                                        IF("{USERDOC}"==null){
                                        <li><a href="{LINK_ACCOUNT_VERIFICATION}" class="waves-effect"><i class="fa  fa-check-circle-o"></i> {LANG_ACCOUNT_VERIFICATION}</a></li>
                                        {:IF}
                                        IF("{USERDOC}"!=null){
                                        <li><a href="{LINK_ACCOUNT_VERIFICATION_DETAILS}" class="waves-effect"><i class="fa  fa-check-circle-o"></i> {LANG_ACCOUNT_VERIFICATION}</a></li>
                                        {:IF}
                                        <li><a href="{LINK_TRANSACTION}" class="waves-effect"><i
                                                        class="fa fa-money"></i> {LANG_TRANSACTION}</a></li>
                                        <li><a href="{LINK_ACCOUNT_SETTING}" class="waves-effect"><i
                                                        class="fa fa-cog"></i> {LANG_ACCOUNT_SETTING} </a></li>
                                        <li><a href="{LINK_LOGOUT}" class="waves-effect"><i
                                                        class="fa fa-unlock"></i> {LANG_LOGOUT} </a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
                <div class="col-md-9 col-sm-12">
                    <section>
                        <div class="row">
                            <h4>Detalhes da verificação </h4>
                            <div class="table-responsive">
                                <table id="js-table-list"
                                       class="table table-striped table-bordered add-manage-table table demo footable-loaded footable"
                                       data-filter="#filter" data-filter-text-only="true">
                                    <thead>
                                    <tr>
                                        <th> {LANG_DATE}</th>
                                        <th data-sort-ignore="true"> {LANG_VALID_TILL}</th>
                                        <th> {LANG_STATUS}</th>
                                        <th data-type="numeric"> {LANG_AMOUNT}</th>
                                        <th data-type="file"> {LANG_DOCUMENTS}</th>
                                        <th> {LANG_OPTION}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr class='ajax-item-listing IF("{ITEM.status}"=="hide"){ opapcityLight {:IF}'
                                            data-item-id="{ITEM.id}" data-search-term="{ITEM.product_name}">
                                            <td class="add-img-td  width-14-per">
                                                {UPDATED}
                                            </td>
                                            <td class="ads-details-td width-58-per">
                                                {VALID}
                                            </td>
                                            <td class="price-td width-16-per">
                                                <div>
                                                    IF("{USERSTATUS}"=="0"){ <span
                                                            class="label label-warning">    gi{LANG_PENDING}</span>{:IF}
                                                    IF("{USERSTATUS}"=="1"){ <span
                                                            class="label label-success">{LANG_APPROVED}</span> {:IF}
                                                </div>
                                            </td>
                                            <td class="price-td width-16-per">
                                                {VERIFICATION_FEE}

                                            </td>

                                            <td class="price-td width-16-per">
                                                IF("{DOC1}"){
                                                <div><strong><a href="{SITE_URL}storage/docs/{DOC1}"
                                                                target="_blank"> {DOC1} <i class="fa fa-download"> </i>
                                                        </a> </strong></div>{:IF}
                                                <p></p>



                                            </td>
                                            <td class="action-td width-10-per">
                                                <div>
                                                    <p class="opacity1">
                                                        <a class="btn btn-info btn-rounded btn-xs"
                                                           href="{LINK_ACCOUNT_VERIFICATION}"
                                                           data-ajax-action="deleteMyAd"><i
                                                                    class=" fa fa-load"></i> {LANG_RENEW}</a>
                                                    </p>
                                                    </div>
                                            </td>
                                        </tr>

                                    <tr id="norecord" IF(
                                    "{TOTALITEM}"!="0"){ style="display: none;" {:IF}>
                                    <td colspan="5">{LANG_NO_RESULT_FOUND}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>


                    <hr>
                </div>
                <!--end col-md-6-->
            </div>
            <!--end row-->
        </section>

    </div>
    <!--end container-->
</div> <!--end page-content-->
{OVERALL_FOOTER}

<script>

    $('#showmpesa').on("click", function () {
        $('#mpesa').show();
        $('#showmpesa').hide();
        $('#offline').hide();
        $('#showoffline').show();

    })
    $('#showoffline').on("click", function () {
        $('#offline').show();
        $('#showoffline').hide();
        $('#showmpesa').show();
        $('#mpesa').hide();

    })

    $("form#processarVerificado").submit(function (e) {
        e.preventDefault();

        var formData = new FormData(this);

        var mpesa_numero = $('#mpesa_numero').val();

        $.ajax({
            type: "POST",
            url: APPPATH + 'verificarUtilizador/',
            data: formData,
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function () {

                console.log("A iniciar");
                $('#carregamento').css("display", "block");

            },
            complete: function () {

                console.log("A finalizar");
                $('#carregamento').css("display", "none");

            },
            success: function (response) {

                var result = JSON.parse(response);

                if (result.state) {

                    swal({
                        title: "Sucesso",
                        text: result.message,
                        icon: "success",
                        button: "Ok!"
                    }, function () {

                        location.reload();

                    });

                } else {
                    swal({
                        title: "Erro!",
                        text: result.message,
                        icon: "error",
                        button: "Ok!"
                    });
                }


                return false;
            },
            error: function () {

                alert("ocorreu um erro");

                return false;
            }
        });


    });
</script>
