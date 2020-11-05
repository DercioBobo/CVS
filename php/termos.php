<?php

$page = new HtmlTemplate ("templates/" . $config['tpl_name'] . "/termos.tpl");
$page->SetParameter ('OVERALL_HEADER', create_header($lang['TERMOS']));
if(checkloggedin()) {
    $page->SetParameter('USER_ID', $_SESSION['user']['id']);
}else{
    $page->SetParameter('USER_ID', "");
}

$page->SetParameter ('OVERALL_FOOTER', create_footer());
$page->CreatePageEcho();
?>
