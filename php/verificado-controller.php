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


if(isset($_FILES['bi_doc']['name']) && isset($_FILES['alvara_doc']['name'])){

    /* Getting file name */
    $filename_bi = $_FILES['bi_doc']['name'];
    $filename_alvara = $_FILES['alvara_doc']['name'];

    /* Location */
    $bi_name = time().$filename_bi;
    $alv_name = time().$filename_alvara;
    $location_bi = STORAGEPATH.'docs/'.$bi_name;
    $location_alvara = STORAGEPATH.'docs/'.$alv_name;
    $BiFileType = pathinfo($location_bi,PATHINFO_EXTENSION);
    $AlvaraFileType = pathinfo($location_alvara,PATHINFO_EXTENSION);
    $BiFileType = strtolower($BiFileType);
    $AlvaraFileType = strtolower($AlvaraFileType);

    /* Valid extensions */
    $valid_extensions = array("jpg","jpeg","png","pdf","doc","docx");

    $response = 0;
    /* Check file extension */
    if(in_array(strtolower($BiFileType), $valid_extensions) && in_array(strtolower($AlvaraFileType), $valid_extensions)) {
        /* Upload file */
        $rand = rand(5000,100000);


        if(move_uploaded_file($_FILES['bi_doc']['tmp_name'],$location_bi) && move_uploaded_file($_FILES['alvara_doc']['tmp_name'],$location_alvara)){

            if (checkloggedin()) {

                $state = update_verificado_docs($bi_name, $alv_name);

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
