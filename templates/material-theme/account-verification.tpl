{OVERALL_HEADER}
<div id="page-content">
    <div class="container">
        <ul class="breadcrumb bcstyle2">
            <li><a href="{LINK_INDEX}">{LANG_HOME}</a></li>
            <li class="active"><a>{LANG_ACCOUNT_VERIFICATION}</a></li>
        </ul>
        <a href="{LINK_POST-AD}" class="postadinner"><span> <i
                        class="fa fa-plus-circle"></i>   {LANG_POST_AD}</span></a>
        <!--end breadcrumb-->
        <section class="page-title center"><h2>{LANG_ACCOUNT_VERIFICATION}</h2></section>
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
                                        IF("{USERSTATUS}"=="0"){
                                        <li><a href="{LINK_ACCOUNT_VERIFICATION}" class="waves-effect"><i class="fa  fa-check-circle-o"></i> {LANG_ACCOUNT_VERIFICATION}</a></li>
                                        ELSEIF("{USERSTATUS}"!="0"){
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
                            <h4>Termos de verificação de conta </h4>
                            <ul class="terms_verification">
                                <li>
                                    1. Os documentos de identificação aceites para cidadãos nacionais são BI, Passaporte
                                    e Carta
                                    de Condução e para cidadãos estrangeiros Dire. Todos documentos têm que estar dentro
                                    do
                                    prazo de validade.
                                </li>

                                <li>
                                    2. Não aceitamos reembolsos ou devoluções de valores referentes à carregamento e/ou
                                    verificação de contas. Deste modo, apelamos para que tenha todos os requisitos
                                    disponíveis
                                    antes de efectuar quaisquer pagamentos para evitar constrangimentos.

                                </li>

                                <li>
                                    3. Após o pagamento para recarregamento da conta, o comprovativo tem validade de 48
                                    horas,
                                    ou seja, o usuário tem 2 dias para enviar o comprovativo para o carregamento da
                                    conta. Após
                                    este período, o pagamento e o comprovativo perdem a sua validade e não poderemos
                                    proceder
                                    com o carregamento da conta.
                                </li>

                                <li>
                                    4. Para cada recibo ou comprovativo para carregamento de conta falso, terá de pagar
                                    uma
                                    multa de igual valor para manter a conta activa. Se este comportamento for
                                    recorrente, terá
                                    a conta suspensa e bloqueada por tempo indeterminado.
                                </li>


                            </ul>
                            <form id="processarVerificado" class="margin-top-10">

                                <div class="form-row">
                                    <div class="col-md-12 form-group">
                                        <div class="input-field select_boladas">
                                            <select id="document_type1" name="document_type1" class="meterialselect" required>
                                                <option value="0">Selecione o tipo de documento</option>
                                                <option value="BI">BI</option>
                                                <option value="Passaporte">Passaporte</option>
                                                <option value="Carta_de_Condução">Carta de Condução</option>
                                                <option value="DIRE">DIRE</option>
                                                <option value="{LANG_OTHER}">{LANG_OTHER}</option>
                                            </select>
                                        </div>

                                        <div class="input-field">
                                            <input type="file" id="bi_doc" name="bi_doc" required>
                                        </div>
                                    </div>



                                </div>

                                <div class="text-center">
                                    <button type="button" class="btn btn-danger margin-top-20 hiddengit" id="showmpesa" hidden> Pagar com
                                        M-Pesa
                                        <img width="20" src="{SITE_URL}includes/payments/wire_transfer/logo/mpesa.png">
                                    </button>

                                    <button type="button" class="btn btn-info margin-top-20" id="showoffline"> Pagar
                                        mais
                                        tarde
                                    </button>
                                </div>

                                <div class="form-row" id="mpesa" hidden>
                                    <div class="form-row margin-top-20" >
                                        <div class="alert alert-info text-left">
                                            <p>Introduza o seu número de telefone de Mpesa e receberas uma solicitação para realizar pagamento. Será cobrado uma um valor de {VERIFICATION_FEE} Mts para realizar a verificação.</p>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <input type="text" class="form-control" id="mpesa_numero"
                                               name="mpesa_numero" maxlength="9" pattern="[0-9]{9}"
                                               placeholder="Número">

                                        <button type="submit" class="btn btn-primary">Submeter</button>
                                    </div>

                                </div>

                                <div class="form-row margin-top-20" id="offline" hidden>
                                    <div class="alert alert-info text-left">
                                        <p>Os Documentos e comprovativos de pagamentos podem ser enviados também
                                            por:</p>
                                        <ul>
                                            <li>email: {CONTACT_EMAIL}</li>
                                            <li> Whatsapp: {CONTACT_PHONE}</li>
                                        </ul>

                                    </div>

                                    <button type="submit" class="btn btn-primary">Submeter</button>
                                </div>


                            </form>
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
        $("#mpesa_numero").prop('required',true);


    });
    $('#showoffline').on("click", function () {
        $('#offline').show();
        $('#showoffline').hide();
        $('#showmpesa').show();
        $('#mpesa').hide();
        $("#mpesa_numero").prop('required',false);

    });

    $("form#processarVerificado").submit(function (e) {
        e.preventDefault();

        var formData = new FormData(this);

        var document_type1 = formData.get('document_type1');

        if(document_type1 !== '0'){

            if(formData.get('bi_doc') !== '') {


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

                                window.location.href = 'account-verification-details';

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

            }else{
                swal({
                    title: "Erro!",
                    text: 'Por favor, carregue o '+document_type1+'.',
                    icon: "warning",
                    button: "Ok!"
                });
            }

        }else{
            swal({
                title: "Erro!",
                text: 'Precisa indicar pelomenos um documento',
                icon: "warning",
                button: "Ok!"
            });
        }




    });
</script>
