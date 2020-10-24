<footer class="footer-v2">
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="footer-widget widget-about" style="height: 165px;">
                        <div class="widget-top">
                            <h3 class="widget-title">{SITE_TITLE}</h3>
                        </div>
                        <div class="widget-body">
                            <p>{FOOTER_TEXT}</p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="footer-widget widget-contact" style="height: 165px;">
                        <div class="widget-top">
                            <h3 class="widget-title">{LANG_COMPANY}</h3>
                        </div>
                        <div class="widget-body">
                            <ul class="list-unstyled">
                                IF("{ADDRESS}"!=""){ <li><i class="fa fa-location-arrow"></i> {ADDRESS}</li>{:IF}
                                IF("{PHONE}"!=""){ <li><i class="fa fa-phone"></i> {PHONE}</li>{:IF}
                                IF("{EMAIL}"!=""){ <li><i class="fa fa-envelope-o"></i> {EMAIL}</li>{:IF}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="footer-widget widget-contact" style="height: 165px;">
                        <div class="widget-top">
                            <h3 class="widget-title">{LANG_HELP} &amp; {LANG_SUPPORT}</h3>
                        </div>
                        <div class="widget-body">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-angle-double-right"></i> <a href="{LINK_FAQ}">FAQs</a></li>
                                <li><i class="fa fa-angle-double-right"></i> <a href="{LINK_REPORT}">Reportar Violação</a></li>
                                <li><i class="fa fa-angle-double-right"></i> <a href="{LINK_CONTACT}">{LANG_CONTACT}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="footer-widget widget-news" style="height: 240px;">
                        <div class="widget-top">
                            <h3 class="widget-title">{LANG_LATEST_ADS}</h3>
                        </div>
                        <div class="widget-body">
                            {LOOP: ITEM}
                            <div class="media">
                                <div class="media-left">
                                    <a href="{ITEM.link}">
                                        <img class="media-object" src="{SITE_URL}storage/products/thumb/{ITEM.picture}" alt="Thumb" width="85">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="{ITEM.link}">{ITEM.product_name}</a></h4>
                                    <a href="{ITEM.link}" class="read">{LANG_READ_MORE} <i class="fa fa-caret-right"></i></a>
                                </div>
                            </div>
                            {/LOOP: ITEM}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="col-sm-3">
                <div class="footer-col"><p>&copy; {COPYRIGHT_TEXT}</p></div>
            </div>
            <div class="col-sm-6">
                <div class="footer-col">
                    <div class="navi">
                        <ul>
                            {LOOP: HTMLPAGE}
                            <li><a href="{HTMLPAGE.link}">{HTMLPAGE.title}</a></li>
                            {/LOOP: HTMLPAGE}
                            <li><a href="{LINK_SITEMAP}">{LANG_SITE_MAP}</a></li>
                            IF("{COUNTRY_TYPE}"=="multi"){ <li><a href="{LINK_COUNTRY}">{LANG_COUNTRIES}</a></li>{:IF}
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="footer-col foot-social">
                    <p>
                        {LANG_FOLLOW_US}
                        IF("{FACEBOOK_LINK}"!=""){ <a href="{FACEBOOK_LINK}" target="_blank"><i class="fa fa-facebook-square"></i></a>{:IF}
                        IF("{TWITTER_LINK}"!=""){ <a href="{TWITTER_LINK}" target="_blank"><i class="fa fa-twitter-square"></i></a>{:IF}
                        IF("{GOOGLEPLUS_LINK}"!=""){ <a href="{GOOGLEPLUS_LINK}" target="_blank"><i class="fa fa-google-plus-square"></i></a>{:IF}
                        IF("{YOUTUBE_LINK}"!=""){ <a href="{YOUTUBE_LINK}" target="_blank"><i class="fa fa-youtube-square"></i></a>{:IF}
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>


<!--/End:styleswitch-->
<!--start footer section-->
</div> <!--end page-wrapper-->
<a href="#page-header" class="to-top scroll" data-show-after-scroll="600"><i class="arrow_up"></i></a>
<script>
    var session_uname = "{USERNAME}";
    var session_uid = "{USER_ID}";
    var session_img = "{USERPIC}";
    // Language Var
    var LANG_ENABLE_CHAT_YOURSELF = "{LANG_ENABLE_CHAT_YOURSELF}";
    var LANG_JUST_NOW = "{LANG_JUST_NOW}";
    var LANG_PREVIEW = "{LANG_PREVIEW}";
    var LANG_SEND = "{LANG_SEND}";
    var LANG_FILENAME = "{LANG_FILENAME}";
    var LANG_STATUS = "{LANG_STATUS}";
    var LANG_SIZE = "{LANG_SIZE}";
    var LANG_DRAG_FILES_HERE = "{LANG_DRAG_FILES_HERE}";
    var LANG_STOP_UPLOAD = "{LANG_STOP_UPLOAD}";
    var LANG_ADD_FILES = "{LANG_ADD_FILES}";
    var LANG_TYPE_A_MESSAGE = "{LANG_TYPE_A_MESSAGE}";
    var LANG_ADD_FILES_TEXT = "{LANG_ADD_FILES_TEXT}";
    var LANG_LOGGED_IN_SUCCESS = "{LANG_LOGGED_IN_SUCCESS}";
    var LANG_ERROR_TRY_AGAIN = "{LANG_ERROR_TRY_AGAIN}";
    var LANG_ERROR = "{LANG_ERROR}";
    var LANG_CANCEL = "{LANG_CANCEL}";
    var LANG_DELETED = "{LANG_DELETED}";
    var LANG_ARE_YOU_SURE = "{LANG_ARE_YOU_SURE}";
    var LANG_YOU_WANT_DELETE = "{LANG_YOU_WANT_DELETE}";
    var LANG_YES_DELETE = "{LANG_YES_DELETE}";
    var LANG_AD_DELETED = "{LANG_AD_DELETED}";
    var LANG_SHOW = "{LANG_SHOW}";
    var LANG_HIDE = "{LANG_HIDE}";
    var LANG_HIDDEN = "{LANG_HIDDEN}";
    var LANG_ADD_FAV = "{LANG_ADD_FAVOURITE}";
    var LANG_REMOVE_FAV = "{LANG_REMOVE_FAVOURITE}";
    var LANG_SELECT_CITY = "{LANG_SELECT_CITY}";
    //Chat
    var LANG_CHATS = "{LANG_CHATS}";
    var LANG_NO_MSG_FOUND = "{LANG_NO_MSG_FOUND}";
    var LANG_ONLINE = "{LANG_ONLINE}";
    var LANG_OFFLINE = "{LANG_OFFLINE}";
    var LANG_TYPING = "{LANG_TYPING}";
    var LANG_GOT_MESSAGE = "{LANG_GOT_MESSAGE}";


    $('.select_boladas').on("click",function(event){
        event.stopPropagation();
    });

</script>

<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/bootstrap/js/bootstrap.min.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/jquery.validate.min.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/jquery.fitvids.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/owl.carousel.min.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/jquery.nouislider.all.min.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/jquery.trackpad-scroll-emulator.min.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/custom2.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/custom.js'></script>
<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/materialize/js/materialize.js'></script>

<!-- Sweet-Alert  -->
<script src="{SITE_URL}templates/{TPL_NAME}/assets/plugins/sweetalert/sweetalert.min.js"></script>
<script src="{SITE_URL}templates/{TPL_NAME}/assets/plugins/sweetalert/jquery.sweet-alert.custom.js"></script>

<script type='text/javascript' src='{SITE_URL}templates/{TPL_NAME}/assets/js/user-ajax.js'></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script>
    /* THIS PORTION OF CODE IS ONLY EXECUTED WHEN THE USER THE LANGUAGE & THEME(CLIENT-SIDE) */
    $(function () {
        $('#lang-dropdown').on('click', '.dropdown-menu li', function (e) {
            var lang = $(this).data('lang');
            if (lang != null) {
                var res = lang.substr(0, 2);
                $('#selected_lang').html(res);
                $.cookie('Quick_lang', lang,{ path: '/' });
                location.reload();
            }
        });

        $('#theme-dropdown').on('click', '.dropdown-menu li', function (e) {
            var theme = $(this).data('theme');
            var thm = theme.substr(0, theme.indexOf('-'));
            $('#selected_theme').html(thm);
            $.cookie('Quick_theme', theme,{ path: '/' });
            location.reload();
        });
    });
    $(document).ready(function(){
        var lang = $.cookie('Quick_lang');
        if (lang!=null) {
            var res = lang.substr(0, 2);
            $('#selected_lang').html(res);
        }
        var theme = $.cookie('Quick_theme');
        if (theme!=null) {
            var thm = theme.substr(0, theme.indexOf('-'));
            $('#selected_theme').html(thm);
        }

    });
</script>

IF({LOGGED_IN} && '{QUICKCHAT_SOCKET_ON_OFF}'=='on'){
<script>
    var ws_protocol = window.location.href.indexOf("https://")==0?"wss":"ws";
    var ws_host = '{SOCKET_HOST}';
    var ws_port = '{SOCKET_PORT}';
    var WEBSOCKET_URL = ws_protocol+'://'+ws_host+':'+ws_port+'/quickchat';
    var filename = "{QUICKCHAT_AJAX_SECRET_FILE}.php";
    var plugin_directory = "plugins/quickchat-socket/"+filename;
</script>
<link type="text/css" rel="stylesheet" media="all" href="{SITE_URL}plugins/quickchat-socket/assets/chatcss/chatbox.css"/>
<div id="quickchat-rtl"></div>
<script>
    if ($("body").hasClass("rtl")) {
        $('#quickchat-rtl').append('<link rel="stylesheet" type="text/css" href="{SITE_URL}plugins/quickchat-socket/assets/chatcss/chatbox-rtl.css">');
        var rtl = true;
    }else{
        var rtl = false;
    }
</script>
<!--Websocket Version Js-->
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/assets/chatjs/quickchat-websocket.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/plugins/smiley/js/emojione.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/plugins/smiley/smiley.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/assets/chatjs/lightbox.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/assets/chatjs/chatbox.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/assets/chatjs/chatbox_custom.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/plugins/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-socket/plugins/uploader/jquery.ui.plupload/jquery.ui.plupload.js"></script>
<table id="lightbox" style="display: none;height: 100%">
    <tr><td height="10px"><p><img src="{SITE_URL}plugins/quickchat-socket/plugins/images/close-icon-white.png" width="30px" style="cursor: pointer"/></p></td></tr>
    <tr><td valign="middle"><div id="content"><img src="#"/></div></td></tr>
</table>
ELSEIF({LOGGED_IN} && '{QUICKCHAT_AJAX_ON_OFF}'=='on'){
<script>
    var filename = "{QUICKCHAT_AJAX_SECRET_FILE}.php";
    var plugin_directory = "plugins/quickchat-ajax/"+filename;
</script>
<link type="text/css" rel="stylesheet" media="all" href="{SITE_URL}plugins/quickchat-ajax/assets/chatcss/chatbox.css"/>
<div id="quickchat-rtl"></div>
<script>
    if ($("body").hasClass("rtl")) {
        $('#quickchat-rtl').append('<link rel="stylesheet" type="text/css" href="{SITE_URL}plugins/quickchat-ajax/assets/chatcss/chatbox-rtl.css">');
        var rtl = true;
    }else{
        var rtl = false;
    }
</script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/plugins/smiley/js/emojione.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/plugins/smiley/smiley.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/assets/chatjs/lightbox.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/assets/chatjs/chatbox.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/assets/chatjs/chatbox_custom.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/plugins/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/quickchat-ajax/plugins/uploader/jquery.ui.plupload/jquery.ui.plupload.js"></script>
<table id="lightbox" style="display: none;height: 100%">
    <tr><td height="10px"><p><img src="{SITE_URL}plugins/quickchat-ajax/plugins/images/close-icon-white.png" width="30px" style="cursor: pointer"/></p></td></tr>
    <tr><td valign="middle"><div id="content"><img src="#"/></div></td></tr>
</table>

ELSEIF({LOGGED_IN} && '{ZECHAT_ON_OFF}'=='on'){
<script>
    var filename = "{ZECHAT_SECRET_FILE}.php";
    var plugin_directory = "plugins/zechat/"+filename;
</script>
<link type="text/css" rel="stylesheet" media="all" href="{SITE_URL}plugins/zechat/app/includes/chatcss/chat.css"/>
<div id="zechat-rtl"></div>
<script>
    if ($("body").hasClass("rtl")) {
        $('#zechat-rtl').append('<link rel="stylesheet" type="text/css" href="{SITE_URL}plugins/zechat/app/includes/chatcss/chat-rtl.css">');
        var rtl = true;
    }else{
        var rtl = false;
    }
</script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/zechat/app/plugins/smiley/js/emojione.min.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/zechat/app/plugins/smiley/smiley.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/zechat/app/includes/chatjs/lightbox.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/zechat/app/includes/chatjs/chat.js"></script>
<script type="text/javascript" src="{SITE_URL}plugins/zechat/app/includes/chatjs/custom.js"></script>
<script type="text/javascript"
        src="{SITE_URL}plugins/zechat/app/plugins/uploader/plupload.full.min.js"></script>
<script type="text/javascript"
        src="{SITE_URL}plugins/zechat/app/plugins/uploader/jquery.ui.plupload/jquery.ui.plupload.js"></script>

<table id="lightbox" style="display: none;height: 100%">
    <tr><td height="10px"><p><img src="{SITE_URL}plugins/zechat/app/plugins/images/close-icon-white.png" width="30px" style="cursor: pointer"/></p></td></tr>
    <tr><td valign="middle"><div id="content"><img src="#"/></div></td></tr>
</table>
{:IF}

<div id="carregamento" class="page">
    <img src="{SITE_URL}templates/{TPL_NAME}/assets/loader.svg" class="img-load">
</div>

</body> </html>
