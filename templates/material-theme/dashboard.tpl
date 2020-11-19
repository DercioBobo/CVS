{OVERALL_HEADER}

<div id="page-content">
    <div class="container">
        <ul class="breadcrumb bcstyle2">
            <li><a href="{LINK_INDEX}">{LANG_HOME}</a></li>
            <li class="active"><a>Painel de Controle</a></li>
        </ul>
        <a href="{LINK_POST-AD}" class="postadinner"><span> <i class="fa fa-plus-circle"></i>  {LANG_POST_AD}</span></a>
        <!--end breadcrumb-->
        <section class="page-title center"><h2>Painel de Controle</h2></section>
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
                                        <li class="active"><a href="{LINK_DASHBOARD}" class="waves-effect"><i
                                                        class="fa fa-home"></i> {LANG_DASHBOARD} </a></li>
                                        <li><a href="{LINK_PROFILE}/{USERNAME}" class="waves-effect"><i
                                                        class="fa fa-user"></i> {LANG_PROFILE_PUBLIC}</a></li>
                                        <li><a href="{LINK_POST-AD}" class="waves-effect"><i
                                                        class="fa fa-pencil"></i> {LANG_POST_AD}</a></li>
                                        <!--<li><a href="{LINK_MEMBERSHIP}" class="waves-effect"><i
                                                        class="fa fa-shopping-bag"></i> Plano Premium </a></li> -->
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
                                        <!--<li><a href="{LINK_FAVADS}" class="waves-effect"><i class="fa fa-heart"></i> {LANG_FAVOURITE_ADS} <span class="badge">{FAVORITEADS}</span> </a></li>-->
                                        <!--<li><a href="{LINK_PENDINGADS}" class="waves-effect"><i class="fa fa-flag"></i> {LANG_PENDING_APPROVAL}<span class="badge">{PENDINGADS}</span></a></li> -->
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
                                        <li><a href="{LINK_ACCOUNT_VERIFICATION}" class="waves-effect"><i
                                                        class="fa  fa-check-circle-o"></i> {LANG_ACCOUNT_VERIFICATION}
                                            </a></li>
                                        ELSEIF("{USERSTATUS}"!="0"){
                                        <li><a href="{LINK_ACCOUNT_VERIFICATION_DETAILS}" class="waves-effect"><i
                                                        class="fa  fa-check-circle-o"></i> {LANG_ACCOUNT_VERIFICATION}
                                            </a></li>
                                        {:IF}
                                        <li><a href="{LINK_TRANSACTION}" class="waves-effect"><i
                                                        class="fa fa-money"></i> {LANG_TRANSACTION}</a></li>

                                        <li><a href="{LINK_ACCOUNT_SETTING}" class="waves-effect"><i
                                                        class="fa fa-cog"></i> {LANG_ACCOUNT_SETTING}</a></li>
                                        <li><a href="{LINK_LOGOUT}" class="waves-effect"><i
                                                        class="fa fa-unlock"></i> {LANG_LOGOUT}</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
                <div class="col-md-9 col-sm-12">
                    <form id="uploadForm" method="post" action="#" enctype="multipart/form-data">
                        <section>
                            <div class="user-details box">
                                <div class="user-image">
                                    <div class="image">
                                        <div class="bg-transfer">
                                            <img src="{SITE_URL}storage/profile/small_{AUTHORIMG}">
                                        </div>
                                        <!--end bg-transfer-->
                                        <div class="single-file-input">
                                            <input type="file" id="avatar" name="avatar">
                                            <div>{LANG_UPLOAD_PICTURE} <i class="fa fa-upload"></i></div>
                                        </div>
                                    </div>
                                    <!--end image-->
                                </div>
                                <!--end user-image-->
                                <div class="description clearfix">
                                    <h3>&nbsp;</h3>
                                    <h2>{AUTHORNAME}</h2>
                                    <a href="{LINK_ACCOUNT_SETTING}"
                                       class="btn btn-default btn-rounded scroll btn-xs">{LANG_ACCOUNT_SETTING}</a>
                                    <hr>
                                    <small>Carregue a foto e clique no botão abaixo actualizar</small>
                                    <!--  <figure>
                                        <div class="pull-left"><strong>{LANG_JOIN_DATE} :</strong></div>
                                        <div class="pull-right">{JOIN_DATE}</div>
                                    </figure> -->
                                </div>
                                <!--end description-->
                            </div>
                        </section>
                        <!--end user-details-->
                        <section>
                            {LOOP: ERRORS}
                                <article class="byMsg byMsgError" id="formErrors">! {ERRORS.message}</article>
                            {/LOOP: ERRORS}
                        </section>
                        <section>
                            <h3>Meu Perfil</h3>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="name">{LANG_FULL_NAME}</label>
                                        <input type="text" name="name" id="name" value="{AUTHORNAME}">
                                    </div>
                                    <!--end input-field-->
                                </div>
                                <!--end col-md-12-->
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="email">{LANG_EMAIL}</label>
                                        <input id="email" type="email" value="{EMAIL}" disabled required=""></div>
                                    <!--end input-field-->
                                </div>
                                <!--end col-md-6-->
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="phone">Telefone</label>
                                        <input type="text" name="phone" id="Phone" value="{PHONE}">
                                    </div>
                                    <!--end input-field-->
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="address">{LANG_ADDRESS}</label>
                                        <input type="text" id="address" rows="1" name="address" value="{ADDRESS}"/>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <select name="country" class="meterialselect">
                                            {LOOP: COUNTRY}
                                                <option value="{COUNTRY.asciiname}" IF(
                                                "{COUNTRY}"=="{COUNTRY.asciiname}"){ selected {:IF}>{COUNTRY.asciiname}</option>
                                            {/LOOP: COUNTRY}
                                        </select>
                                        <label>{LANG_COUNTRY}</label>
                                    </div>
                                </div>

                                <!--end col-md-6-->
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field select_boladas">

                                        <select id="city" name="city" class="meterialselect">

                                                <option value="">IF("{CITY}"==""){ Província {ELSE} {CITY} {:IF} </option>
                                                <option value="Maputo (Matola)">Maputo (Matola) </option>
                                                <option value="Maputo (cidade)">Maputo (cidade) </option>
                                                <option value="Gaza">Gaza </option>
                                                <option value="Inhambane">Inhambane </option>
                                                <option value="Sofala">Sofala </option>
                                                <option value="Manica">Manica </option>
                                                <option value="Tete">Tete </option>
                                                <option value="Zambézia">Zambézia </option>
                                                <option value="Cabo Delgado">Cabo Delgado </option>
                                                <option value="Niassa">Niassa </option>
                                                <option value="Nampula">Nampula </option>
                                        </select>

                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12">
                                    <div class="input-field ">
                                        <label for="content">{LANG_ABOUT_ME}</label>
                                        <textarea class="materialize-textarea" id="content" rows="2"
                                                  name="content">{AUTHORABOUT}</textarea>
                                    </div>
                                </div>
                                <!--end input-field-->

                            </div>

                        </section>
                        <section>


                            <div class="row">
                                <h3>{LANG_SOCIAL_NETWORKS}</h3>
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="facebook">Facebook</label>
                                        <input type="text" name="facebook" id="facebook" value="{FACEBOOK}">
                                    </div>
                                    <!--end input-field-->
                                </div>
                                <!--end col-md-6-->
                                <div class="col-md-6 col-sm-6">
                                    <div class="input-field">
                                        <label for="instagram">Instagram</label>
                                        <input type="text" name="instagram" id="instagram" value="{INSTAGRAM}">
                                    </div>
                                    <!--end input-field-->
                                </div>
                            </div>
                        </section>

                        <section class="center">
                            <div class="input-field">
                                <input type="submit" class="btn btn-primary btn-rounded" name="submit"
                                       value="{LANG_UPDATE}">
                            </div>
                            <!--end input-field-->
                        </section>
                    </form>
                    <!--end form-->
                </div>
                <!--end col-md-6-->
            </div>
            <!--end row-->
        </section>
    </div>
    <!--end container-->
</div>
<!--end page-content-->

{OVERALL_FOOTER}
<script type="text/javascript">
    function NotifyValueChanged() {
        if ($('#notify').is(":checked"))
            $(".skills").show();
        else
            $(".skills").hide();
    }

    NotifyValueChanged();
</script>
