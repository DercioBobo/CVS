<?php
/**
 * Created by PhpStorm.
 * User: ESCOPIL
 * Date: 01-11-2019
 * Time: 10:26
 */

ini_set('max_execution_time', 1000);

set_time_limit(1200);

date_default_timezone_set("Africa/Maputo");


$nome = $_REQUEST["nome"];
$numero = $_REQUEST["numero"];
$valor = $_REQUEST["valor"];

$result = send_notification_mpesa($numero,$valor);
$text = $lang['CONFIRM_PAY'];
$button = "<button type='submit' name='Submit' class='btn btn-primary margin-top-55 subscribeNow' id='subscribeNow'>$text</button>";

$result = json_decode($result, TRUE);

if(strcmp($result["output_ResponseCode"],'INS-0')==0){

    $_SESSION["mp_numero"] = '258'.$numero;
    $_SESSION["mp_transactionID"] = $result["output_TransactionID"];
    $_SESSION["mp_conversationID"] = $result["output_ConversationID"];
    $_SESSION["mp_respondeDesc"] = $result["output_ResponseDesc"];

}

$result ["botao"] = $button;

echo json_encode($result);

function send_notification_mpesa ($numero,$valor)
{
    //$url = 'https://api.sandbox.vm.co.mz:18352/ipg/v1x/c2bPayment/singleStage/';
    $url = 'https://api.vm.co.mz:18352/ipg/v1x/c2bPayment/singleStage/';
    $fields = array(
        'input_TransactionReference'=> 'OEUT0'.rand(10000,99999),
        'input_CustomerMSISDN'=> '258'.$numero,
        'input_Amount'=> $valor,
        'input_ThirdPartyReference'=> 'COMLEI'.time(),
        'input_ServiceProviderCode'=> '900415'
    );

    $mpesa_token = nl2br(get_option('m_pesa_token'));


    $headers = array(
        'Authorization: Bearer '.$mpesa_token,
        'Content-Type: application/json',
        'Origin: developer.mpesa.vm.co.mz'
    );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
    $result = curl_exec($ch);
    if ($result === FALSE) {
        die('Curl failed: ' . curl_error($ch));
    }
    curl_close($ch);
    return $result;
}
