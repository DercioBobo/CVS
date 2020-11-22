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

//include_once 'mpesa-controller.php';

if(isset($_FILES['bi_doc']['name'])){


    if(!empty($_REQUEST['mpesa_numero'])){

        $amount = get_option("verification_fee");
        $numero = $_REQUEST['mpesa_numero'];

        $result = send_notification_mpesa($_REQUEST['mpesa_numero'],$amount);
        $result = json_decode($result, TRUE);
        if(strcmp($result["output_ResponseCode"],'INS-0')==0){

            $_SESSION["mp_numero"] = '258'.$numero;
            $_SESSION["mp_transactionID"] = $result["output_TransactionID"];
            $_SESSION["mp_conversationID"] = $result["output_ConversationID"];
            $_SESSION["mp_respondeDesc"] = $result["output_ResponseDesc"];

        }else{

            if(strcmp($result["output_ResponseCode"],'INS-10')==0) {
                $response = array('state' => false, 'message' => 'Transação duplicada, tente mais tarde.');
            }else{
                $response = array('state' => false, 'message' => 'Transação sem sucesso, tente mais tarde.');
            }

            echo json_encode($response);

            exit;

        }

        $user_id = $user_id = $_SESSION['user']['id'];
        $amount = get_option("verification_fee");
        $info = ORM::for_table($config['db']['pre'].'payments')
            ->where(array(
                'payment_id' => '3',
                'payment_install' => '1'
            ))
            ->find_one();

        $folder = $info['payment_folder'];
        $product_id = 0;
        $title = 'Verification Fee';
        $trans_desc = 'Verification Fee';


        $payRes = paymentVerification($user_id,$amount,$folder,$product_id,$title,$trans_desc,$config);

    }


    /* Getting file name */
    $filename_bi = $_FILES['bi_doc']['name'];
    //$filename_alvara = $_FILES['alvara_doc']['name'];

    /* Location */
    $bi_name = time().$filename_bi;
   // $alv_name = time().$filename_alvara;
    $location_bi = STORAGEPATH.'docs/'.$bi_name;
   // $location_alvara = STORAGEPATH.'docs/'.$alv_name;
    $BiFileType = pathinfo($location_bi,PATHINFO_EXTENSION);
    //$AlvaraFileType = pathinfo($location_alvara,PATHINFO_EXTENSION);
    $BiFileType = strtolower($BiFileType);
    //$AlvaraFileType = strtolower($AlvaraFileType);

    /* Valid extensions */
    $valid_extensions = array("jpg","jpeg","png","pdf","doc","docx");

    $response = 0;
    /* Check file extension */
    if(in_array(strtolower($BiFileType), $valid_extensions)) {
        /* Upload file */
        $rand = rand(5000,100000);

        if(move_uploaded_file($_FILES['bi_doc']['tmp_name'],$location_bi)){

            if (checkloggedin()) {

                $state = update_verificado_docs($bi_name);

                $response = array('state'=>true,'message'=>'Documentos submetidos com sucesso', "updta"=>$state);

            }else{
                $response = array('state'=>false,'message'=>'Por favor, inicie a sua sessão');
            }

        }else{
            $response = array('state'=>false,'message'=>'Documentos não foram submetidos com sucesso');
        }
    }

    echo json_encode($response);
    exit;
}

echo 0;

function paymentVerification($user_id, $amount, $folder, $product_id, $title,$trans_desc, $config){

    $item_pro_id = 0;

    $mysqli = db_connect();

                $query = "INSERT INTO " . $config['db']['pre'] . "transaction set
                    product_name = '" . validate_input($title) . "',
                    product_id = '$item_pro_id',
                    seller_id = '" . $user_id . "',
                    status = 'success',
                    amount = '$amount',
                    featured = '0',
                    urgent = '0',
                    highlight = '0',
                    transaction_gatway = '" . validate_input($folder) . "',
                    transaction_ip = '" . encode_ip($_SERVER, $_ENV) . "',
                    transaction_time = '" . time() . "',
                    transaction_description = '" . validate_input($trans_desc) . "',
                    transaction_method = 'Premium Ad',
                    msisdn = '" . $_SESSION['mp_numero'] . "',
                mp_transaction_id = '" . $_SESSION['mp_transactionID'] . "',
                mp_conversation_id = '" . $_SESSION['mp_conversationID'] . "',
                mp_response_desc = '" . $_SESSION['mp_respondeDesc'] . "'
                    ";


            $resp = $mysqli->query($query) OR error(mysqli_error($mysqli));

            $transaction_id = $mysqli->insert_id;

            return $resp;

}

function send_notification_mpesa ($numero,$valor)
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
