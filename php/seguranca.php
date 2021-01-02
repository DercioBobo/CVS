<?php

$page = new HtmlTemplate ("templates/" . $config['tpl_name'] . "/seguranca.tpl");
$page->SetParameter ('OVERALL_HEADER', create_header($lang['SEGURANCA']));
if(checkloggedin()) {
    $page->SetParameter('USER_ID', $_SESSION['user']['id']);
}else{
    $page->SetParameter('USER_ID', "");
}

$page->SetParameter ('OVERALL_FOOTER', create_footer());
$page->CreatePageEcho();
?>
