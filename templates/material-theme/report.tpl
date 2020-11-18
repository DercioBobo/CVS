{OVERALL_HEADER}


<div class="row">
    <div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
        <div class="middle-container">
            <div class="middle-dabba">
                <h1>Denúnciar Anúncio</h1>
                <div id="post-form" style="padding:10px">
                    <form name="form1" method="post" action="" id="send">

                        <div class="input-field">
                            <label for="name">{LANG_YNAME} IF("{NAME_ERROR}"!=""){<span class="redc">({NAME_ERROR})</span>{:IF}</label>
                            <input name="name" type="text" id="name" value="{NAME}">
                        </div>

                        <div class="input-field">
                            <label for="email">{LANG_YEMAIL} IF("{EMAIL_ERROR}"!=""){<span class="redc">({EMAIL_ERROR})</span>{:IF}</label>
                            <input name="email" type="text" id="email"  value="{EMAIL}">
                        </div>

                        <div class="input-field">
                            <label for="username">{LANG_YUSERNAME}</label>
                            <input name="username" type="text" id="username" value="{USERNAME}" >
                        </div>
                        <div class="input-field  select_boladas">

                            <select name="violation" class="meterialselect">
                                <option>Selecione o tipo de denúncia</option>
                                <option value="{LANG_REPORT_1}">{LANG_REPORT_1}</option>
                                <option value="{LANG_REPORT_2}">{LANG_REPORT_2}</option>
                                <option value="{LANG_REPORT_3}">{LANG_REPORT_3}</option>
                                <option value="{LANG_REPORT_4}">{LANG_REPORT_4}</option>
                                <option value="{LANG_REPORT_5}">{LANG_REPORT_5}</option>
                                <option value="{LANG_REPORT_6}">{LANG_REPORT_6}</option>
                                <option value="{LANG_REPORT_7}">{LANG_REPORT_7}</option>
                                <option value="{LANG_REPORT_8}">{LANG_REPORT_8}</option>
                                <option value="{LANG_REPORT_9}">{LANG_REPORT_9}</option>
                                <option value="{LANG_OTHER}">{LANG_OTHER}</option>
                            </select>
                        </div>
                        <div class="input-field">
                            <label for="username2">Nome do Anunciante</label>
                            <input name="username2" type="text" id="username2" value="{USERNAME2}" size="42">
                        </div>
                        <div class="input-field">
                            <label for="url">{LANG_URLVIOLATION}</label>
                            <input name="url" type="text" id="url" size="42" value="{REDIRECT_URL}">
                        </div>
                        <div class="input-field">
                            <label for="details">Detalhes IF("{VIOL_ERROR}"!=""){<span class="redc">({VIOL_ERROR})</span>{:IF}</label>
                            <textarea name="details" class="materialize-textarea" cols="32" rows="6" id="details">{DETAILS}</textarea></div>
                        </div>
                        <div class="input-field center">
                            <input type="submit" name="Submit" class="btn btn-primary btn-rounded" value="Reportar">
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{OVERALL_FOOTER}
