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

$result = send_notification($nome,$numero,$valor);
$text = $lang['CONFIRM_PAY'];
$button = "<button type='submit' name='Submit' class='btn btn-primary margin-top-55 subscribeNow' id='subscribeNow'>$text</button>";

$result = json_decode($result, TRUE);

$result ["botao"] = $button;

echo json_encode($result);

function send_notification ($nome, $numero,$valor)
{
    $url = 'https://api.sandbox.vm.co.mz:18352/ipg/v1x/c2bPayment/singleStage/';
    $fields = array(
        'input_TransactionReference'=> 'T'.rand(10000,99999).'C',
        'input_CustomerMSISDN'=> '258'.$numero,
        'input_Amount'=> $valor,
        'input_ThirdPartyReference'=> 'BI7BA1',
        'input_ServiceProviderCode'=> '171717'
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
