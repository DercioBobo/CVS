{OVERALL_HEADER}

<div class="row">
    <div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
        <div class="middle-dabba">
            <h1>{HEADING}!</h1>
            <p>{MESSAGE}</p>

            <p id="stylish" class="plan1">
            <button onClick="window.location.href='javascript:history.back();'" class="btn btn-primary waves-effect">{LANG_BACK}</button>
                IF("{MESSAGE}" == "{LANG_ACCOUNT_VERIFICATION_MSG}"){
                <a href="{LINK_ACCOUNT_VERIFICATION}"  class="btn btn-primary btn-xs link">{LANG_ACCOUNT_VERIFICATION}</a>
                {:IF}
            </p>
        </div>
    </div>
</div>
						
{OVERALL_FOOTER}
