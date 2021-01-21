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
    $user_id = $user_id = $_SESSION['user']['id'];
    $reference = 'OEUT0'.time();
    $fields = array(
        'input_TransactionReference'=> $reference,
        'input_CustomerMSISDN'=> '258'.$numero,
        'input_Amount'=> $valor,
        'input_ThirdPartyReference'=> 'COMLEI'.time(),
        'input_ServiceProviderCode'=> '900415'
    );

    addmpesalogs($valor,'m-pesa',$reference,$numero,$user_id);

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
        addmpesalogs($valor,'m-pesa',$reference,$numero,$user_id, curl_error($ch),curl_error($ch));

        die('Curl failed: ' . curl_error($ch));
    }else{
        addmpesalogs($valor,'m-pesa',$reference,$numero,$user_id,json_decode($result)->output_ResponseDesc,$result);

    }
    curl_close($ch);
    return $result;
}

function addmpesalogs($valor,$tipo,$referencia,$numero_telefone,$user_id,$estado=null,$resposta=null)
{
    $transaccao_data_criacao = date("Y/m/d H:i:s");

    $mysqli = db_connect();

    $query = "INSERT INTO log_pagamento set
                    valor = '" . $valor . "',
                    tipo = '$tipo',
                    reference = '" . $referencia . "',
                    numero_telefone = '" . $numero_telefone . "',
                    user_id = '" . $user_id . "',
                    data = '" . $transaccao_data_criacao . "',
                    estado = '" . $estado . "',
                    resposta = '" . $resposta . "',
                    created_by = '" . $user_id . "',
                    created_on = '" . $transaccao_data_criacao . "'
                    ";


    $resp = $mysqli->query($query) OR error(mysqli_error($mysqli));


}
