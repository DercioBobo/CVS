{OVERALL_HEADER}
<link href="{SITE_URL}templates/{TPL_NAME}/assets/css/user-html.css" rel="stylesheet" type="text/css"/>
<link href="{SITE_URL}templates/{TPL_NAME}/assets/postad/slick.css" rel="stylesheet" type="text/css">
<link href="{SITE_URL}templates/{TPL_NAME}/assets/postad/detail-page.css" rel="stylesheet" type="text/css">

<!-- starReviews stylesheet -->
<link href="{SITE_URL}plugins/starreviews/assets/css/starReviews.css" rel="stylesheet" type="text/css"/>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="{LINK_INDEX}">{LANG_HOME}</a></li>
        <li class="active">{ITEM_TITLE}</li>
    </ol>

    <div class="item-single row">

        <div class="item-content col-xs-12 col-sm-7 col-md-8">

            <article class="inner">
                <header>
                    <h1>{ITEM_TITLE}
                        <span class="label-wrap hidden-sm hidden-xs">

                        IF("{ITEM_FEATURED}"=="1"){ <span class="label featured"> {LANG_FEATURED}</span> {:IF}
                        IF("{ITEM_URGENT}"=="1"){ <span class="label urgent"> {LANG_URGENT}</span> {:IF}
                        IF("{ITEM_HIGHLIGHT}"=="1"){ <span class="label highlight"> {LANG_HIGHLIGHT}</span> {:IF}
                    </span>
                    </h1>
                    <ul class="info-list">
                        <li><i class="fa fa-map-marker"></i><a href="#">{ITEM_CITY}, {ITEM_COUNTRY}</a></li>
                        <li><i class="fa fa-clock-o"></i>{ITEM_CREATED}</li>
                        <li><i class="fa fa-eye"></i> {LANG_AD_VIEWS}: {ITEM_VIEW}</li>
                        <li><i class="fa fa-bookmark"></i>Código: {ITEM_ID}</li>
                        <li class="visible-xs-block"><i class="fa fa-money "></i>Preço : {ITEM_PRICE}</li>
                    </ul>
                </header>
                IF("{SHOW_IMAGE_SLIDER}"=="1"){
                <div class="item-gallery-slider">
                    <div class="item-lg-images">
                        <a href="#" class="trigger-gallery"><i class="fa fa-arrows-alt"></i></a>
                        <div class="slick-carousel slick-lg-images" data-asnav=".slick-sm-images" data-fade="true"
                             data-slides-scroll="1" data-dots="false" data-nav="false" data-slides="1"
                             data-slides-lg="1" data-slides-md="1" data-slides-sm="1" data-loop="true" data-auto="true">
                            {ITEM_SCREENS_BIG}
                        </div>
                    </div>
                    <div class="item-sm-images">
                        <div class="slick-carousel slick-sm-images" data-focus="true" data-asnav=".slick-lg-images"
                             data-slides-scroll="1" data-dots="false" data-nav="true" data-prev="fa fa-chevron-left"
                             data-next="fa fa-chevron-right" data-slides="6" data-slides-lg="4" data-slides-md="4"
                             data-slides-sm="2" data-loop="true" data-auto="false">
                            {ITEM_SCREENS_SM}

                        </div>
                    </div>
                </div>

                <div class="full-width-gallery">
                    <div class="inner">
                        <div class="container">
                            <div class="gallery-lg-area">
                                <a href="#" class="close-lg-gallery"><i class="fa fa-close"></i></a>
                                <div class="slick-carousel slick-gallery-lg-images" data-asnav=".slick-gallery-thumbs"
                                     data-fade="true" data-slides-scroll="1" data-dots="false" data-nav="false"
                                     data-slides="1" data-slides-lg="1" data-slides-md="1" data-slides-sm="1"
                                     data-loop="true" data-auto="false">

                                    {ITEM_SCREENS_BIG}

                                </div>
                            </div>
                        </div>
                        <div class="gallery-thumbs">
                            <div class="container">
                                <div class="gallery-thumbs-inner">
                                    <div class="slick-carousel slick-gallery-thumbs" data-focus="true"
                                         data-asnav=".slick-gallery-lg-images" data-slides-scroll="1" data-dots="false"
                                         data-nav="true" data-prev="fa fa-chevron-left" data-next="fa fa-chevron-right"
                                         data-slides="6" data-slides-lg="4" data-slides-md="4" data-slides-sm="2"
                                         data-loop="true" data-auto="false">
                                        {ITEM_SCREENS_BIG}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {:IF}
                IF("{ITEM_CUSTOMFIELD}"!=""){
                <div class="quick-info">

                    <ul class="clearfix">
                        {LOOP: ITEM_CUSTOM}
                            <li>
                                <div class="inner clearfix">
                                    <span class="label">{ITEM_CUSTOM.title}</span>
                                    <span class="desc">{ITEM_CUSTOM.value}</span>
                                </div>
                            </li>
                        {/LOOP: ITEM_CUSTOM}
                    </ul>
                </div>
                {:IF}
                {LOOP: ITEM_CUSTOM_CHECKBOX}
                    <div class="text-widget">
                        <div class="detail-title">
                            <h2 class="title-left">{ITEM_CUSTOM_CHECKBOX.title}</h2>
                        </div>
                        <ul class="amenities">{ITEM_CUSTOM_CHECKBOX.value}</ul>
                    </div>
                {/LOOP: ITEM_CUSTOM_CHECKBOX}


                <div class="text-widget">
                    <div class="detail-title">
                        <h2 class="title-left">{LANG_DESCRIPTION}</h2>
                    </div>
                    <div class="inner">
                        <div class="user-html">{ITEM_DESC}</div>
                    </div>
                </div>
                IF("{SHOW_TAG}"=="1"){
                <div class="text-widget">
                    <div class="detail-title">
                        <h2 class="title-left">{LANG_PRODUCT_TAG}</h2>
                    </div>
                    <div class="inner">
                        <ul class="tags">
                            {ITEM_TAG}
                        </ul>
                    </div>
                </div>
                {:IF}
                <section>

                    <!-- **** Start reviews **** -->
                    <div class="starReviews text-widget">
                        <div class="detail-title">
                            <h2 class="title-left">{LANG_REVIEWS} e {LANG_COMMENTS}</h2>
                        </div>
                        <!-- This is where your product ID goes -->
                        <div id="review-productId" class="review-productId" style="">{ITEM_ID}</div>
                        <!-- Show current reviews -->
                        <div class="show-reviews">
                            <div class="loader" style="margin: 0 auto;"></div>
                        </div>
                        <hr>

                        IF("{LOGGED_IN}"=="0"){
                        <div style="padding-top: 10px"><a class="modal-trigger btn btn-primary" data-toggle="modal"
                                                          data-target="#loginPopUp"
                                                          href="#loginPopUp">{LANG_LOGINTOREVIEW}</a></div>
                        {:IF}
                        IF("{LOGGED_IN}"=="1"){
                        <!-- Add new review -->
                        <div class="add-review"></div>
                        {:IF}

                        <script type="text/javascript">
                            var LANG_ADDREVIEWS = "{LANG_ADDREVIEWS}";
                            var LANG_SUBMITREVIEWS = "{LANG_SUBMITREVIEWS}";
                            var LANG_HOW_WOULD_RATE = "{LANG_HOW_WOULD_RATE}";
                            var LANG_REVIEWS = "{LANG_REVIEWS}";
                            var LANG_YOURREVIEWS = "{LANG_YOURREVIEWS}";
                            var LANG_ENTER_REVIEW = "{LANG_ENTER_REVIEW}";
                            var LANG_STAR = "{LANG_STAR}";
                        </script>

                    </div>

                    <!-- **** End reviews **** -->

                </section>

                <section id="send-message">
                    <div class="property-description detail-block">
                        <div class="detail-title">
                            <h2 class="title-left">Enviar email para o dono da publicação - {ITEM_AUTHORUNAME}</h2>
                        </div>

                        <div class="alert alert-success" id="email_success" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            {LANG_MAILSENTTOSELLER}
                        </div>
                        <div class="alert alert-danger" id="email_error" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            {LANG_ERROR_TRY_AGAIN}
                        </div>
                        <form method="post" id="email_contact_seller" action="email_contact_seller">
                            <div id="post_loading" class="loader" style="display: none;margin: 0 auto;"></div>
                            <div class="input-field">
                                <label for="name">{LANG_FULL_NAME}</label>
                                <input type="text" name="name" id="name" value="">
                            </div>
                            <div class="input-field">
                                <label for="email">{LANG_EMAILAD}</label>
                                <input type="email" name="email" id="email" value="">
                            </div>
                            <div class="input-field">
                                <label for="phone">{LANG_PHONE_NO}</label>
                                <input type="text" name="phone" id="phone" value="">
                            </div>
                            <div class="input-field">
                                <label for="message">{LANG_ENTER_YOUR_MESSAGE}</label>
                                <textarea name="message" class="materialize-textarea" id="message" rows="4"></textarea>
                            </div>
                            <div class="input-field">
                                <input type="hidden" class="form-control" name="id" value="{ITEM_ID}">
                                <input type="hidden" class="form-control" name="sendemail" value="1">
                                <input type="submit" class="btn btn-primary btn-rounded" value="{LANG_SEND_MAIL}">
                            </div>

                        </form>
                        <!--end form-->
                    </div>
                </section>
            </article>


        </div>
        <aside class="sidebar col-xs-12 col-sm-5 col-md-4">
            <div class="inner">
                IF("{ITEM_PRICE}"!="0"){
                <div class="price-widget short-widget">
                    <strong>{ITEM_PRICE}</strong>
                    <span> IF("{ITEM_NEGOTIATE}"){ Negociavel   {:IF}</span>
                </div>
                {:IF}
                <div class="user-widget text-center">
                    <div class="profile-picture">
                        <img width="70px" style="min-height:73px" src="{SITE_URL}storage/profile/{ITEM_AUTHORIMG}"
                             alt="{ITEM_AUTHORUNAME}">
                    </div>

                    <h4><a href="{ITEM_AUTHORLINK}">{ITEM_AUTHORUNAME}</a>
                        IF("{SUB_IMAGE}"!=""){
                        <img src="{SUB_IMAGE}" alt="{SUB_TITLE}" title="{SUB_TITLE}" width="24px"/>
                        {:IF}
                        IF("{ITEM_AUTHORSTATUS}"=="1"){
                        <img data-toggle="tooltip" data-placement="top" title="Vendedor Verificado pela CVS"
                             class="img-check" src="{SITE_URL}templates/{TPL_NAME}/img/check.svg">
                        {:IF}
                    </h4>

                    IF("{ITEM_HIDE_PHONE}"=="no"){


                    <p><em><a data-toggle="collapse" href="#telphone" role="button" aria-expanded="false"
                              aria-controls="telphone" rel="nofollow">{LANG_SHOW_PHONE_NO}</a></em></p>
                    <div class="collapse" id="telphone">
                        <div><i class="fa fa-phone"></i>
                            <strong><a href="tel:{ITEM_PHONE}">{ITEM_PHONE}</a></strong>
                        </div>

                    </div>
                    {:IF}
                    <a href="{ITEM_AUTHORLINK}" class="link">{LANG_VIEW_PROFILE}</a>
                    <div style="padding: 10px 0;">


                        <a href="#send-message">
                            <button type="button" class="btn btn-primary">{LANG_REPLY_MAIL}</button>
                        </a>

                    </div>
                    <a href="{LINK_REPORT}" class="link" style="color: red">Denúnciar Anúncio</a>
                </div>
                <div class="share-widget">
                    <span>Compartilhar</span>
                    <div class="social-share"></div>
                </div>

                <div class="slideshow-container">
                    <div id="" class="mySlides">
                        <a href="{LINK_REPORT}">
                            <img class="img-slide" src="{SITE_URL}storage/banner/slide1.jpg">
                        </a>
                    </div>

                    <div class="mySlides">
                        <a href="{LINK_REPORT}">
                            <img class="img-slide" src="{SITE_URL}storage/banner/slide2.jpg">
                        </a>
                    </div>

                    <div class="mySlides ">
                        <a href="{LINK_REPORT}">
                            <img class="img-slide" src="{SITE_URL}storage/banner/slide3.jpg">
                        </a>
                    </div>
                </div>


                <div class="height-250px" id="">

                    <a href="{LINK_REPORT}">
                        <img class="img-static" src="{SITE_URL}storage/banner/slide3.jpg">
                    </a>
                </div>

                <div class="spnser-widget hidden">
                    <img src="{SITE_URL}templates/{TPL_NAME}/assets/img/spenser.jpg" alt="spnser" width="100%">
                </div>
                <section style="margin-top: 20px;">
                    <h2>{LANG_SIMILAR_ADS}</h2>

                    {LOOP: ITEM}
                        <div class="item">
                            <a href="{ITEM.link}" class="ad-listing">
                                <div class="description">
                                    <div class="label label-default">{ITEM.category}</div>
                                    <h3>{ITEM.product_name}</h3>
                                    <!--<h4>Posted by : {ITEM.username}</h4>
                                <h4>Location : {ITEM.cityname}</h4>-->
                                    <h4>{LANG_POSTED_ON} : {ITEM.created_at}</h4>
                                </div>
                                <!--end description-->
                                <div class="image bg-transfer">
                                    <img src="{SITE_URL}storage/products/thumb/{ITEM.picture}"
                                         alt="{ITEM.product_name}">
                                </div>
                                <!--end image-->
                            </a>
                        </div>
                    {/LOOP: ITEM}

                </section>
            </div>
        </aside>

    </div>

</div>

<script src="{SITE_URL}templates/{TPL_NAME}/assets/postad/slick.min.js"></script>
<script src="{SITE_URL}templates/{TPL_NAME}/assets/postad/app.js"></script>

<script type="text/javascript">

    function socialShare() {
        var socialButtonsEnabled = 1;
        if (socialButtonsEnabled == 1) {
            $('head').append($('<link rel="stylesheet" type="text/css">').attr('href', 'https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css'));
            $('head').append($('<link rel="stylesheet" type="text/css">').attr('href', 'https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css'));
            $.getScript("{SITE_URL}templates/{TPL_NAME}/assets/js/jssocials.min.js", function (data, textStatus, jqxhr) {
                $(".social-share").jsSocials({
                    showLabel: false,
                    showCount: false,
                    shares: ["email", "facebook", "whatsapp"]
                });
            });
        }
    }

    //  Social Share -------------------------------------------------------------------------------------------------------
    if ($(".social-share").length) {
        socialShare();
    }

    $("#email_contact_seller").on('submit', function () {

        $('#email_contact_seller #post_loading').show();
        var action = $("#email_contact_seller").attr('action');
        var form_data = $(this).serialize();

        $.ajax({
            type: "POST",
            url: ajaxurl + '?action=' + action,
            data: form_data,
            success: function (response) {
                if (response == "success") {
                    $('#email_success').show();
                } else {
                    $('#email_error').show();
                }
                $('#email_contact_seller #post_loading').hide();
            }
        });
        return false;
    });
</script>
<!-- jQuery Form Validator -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.34/jquery.form-validator.min.js"></script>
<!-- jQuery Barrating plugin -->
<script src="{SITE_URL}plugins/starreviews/assets/js/jquery.barrating.js"></script>
<!-- jQuery starReviews -->
<script src="{SITE_URL}plugins/starreviews/assets/js/starReviews.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        /* Activate our reviews */
        $().reviews('.starReviews');
    });
</script>
IF("{MAP_TYPE}"=="google"){
<link href="{SITE_URL}includes/assets/plugins/map/google/map-marker.css" type="text/css" rel="stylesheet">
<script type='text/javascript' src='{SITE_URL}includes/assets/plugins/map/google/jquery-migrate-1.2.1.min.js'></script>
<script type='text/javascript'
        src='//maps.google.com/maps/api/js?key={GMAP_API_KEY}&#038;libraries=places%2Cgeometry&#038;ver=2.2.1'></script>
<script type='text/javascript' src='{SITE_URL}includes/assets/plugins/map/google/richmarker-compiled.js'></script>
<script type='text/javascript' src='{SITE_URL}includes/assets/plugins/map/google/markerclusterer_packed.js'></script>
<script type='text/javascript' src='{SITE_URL}includes/assets/plugins/map/google/gmapAdBox.js'></script>
<script type='text/javascript' src='{SITE_URL}includes/assets/plugins/map/google/maps.js'></script>
<script>
    var _latitude = '{ITEM_LAT}';
    var _longitude = '{ITEM_LONG}';
    var element = "singleListingMap";
    var path = '{SITE_URL}templates/{TPL_NAME}/';
    var getCity = false;
    var color = '{MAP_COLOR}';
    var site_url = '{SITE_URL}';
    simpleMap(_latitude, _longitude, element);
</script>
{ELSE}
<link rel="stylesheet" href="{SITE_URL}includes/assets/plugins/map/openstreet/css/style.css">
<!-- Leaflet // Docs: https://leafletjs.com/ -->
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet.min.js"></script>

<!-- Leaflet Maps Scripts (locations are stored in leaflet-quick.js) -->
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet-markercluster.min.js"></script>
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet-gesture-handling.min.js"></script>
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet-quick.js"></script>

<!-- Leaflet Geocoder + Search Autocomplete // Docs: https://github.com/perliedman/leaflet-control-geocoder -->
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet-autocomplete.js"></script>
<script src="{SITE_URL}includes/assets/plugins/map/openstreet/leaflet-control-geocoder.js"></script>
{:IF}
{OVERALL_FOOTER}

