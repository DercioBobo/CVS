<?php

require ('includes.php');
$type = $_REQUEST["type"];
$startdate = $_REQUEST["startdate"];
$enddate = $_REQUEST["enddate"];

if($type == 'users'){
    $preTable = $config['db']['pre'].'user';
    $sql = "SELECT * FROM ".$preTable." ".generateWhereClause($startdate,$enddate);

    $result = $pdo->query($sql);

    if($result){
        $message = array();
        foreach ($result as $res){
            $estado = '';
            if($res['status'] == 0){
              $estado = 'Activo';
            }else if($res['status'] == 1){
              $estado = 'Verificado';
            }else if($res['status'] == 2){
              $estado = 'Banido';
            }

            $message[] = array(
                'nome'=>$res['name'],
                'username'=>$res['username'],
                'email'=>$res['email'],
                'contacto'=>$res['phone'],
                'genero'=>$res['sex'],
                'provincia'=>$res['city'],
                'estado'=>$estado,
                'nr_posts'=>get_items_count($res['id']),
                'ultimo_acesso'=>$res['lastactive'],
                'data_criacao'=>$res['created_at']

                );
        }

        $resp = array('status'=>true, 'message'=>$message);
    }else{
        $resp = array('status'=>false, 'message'=>'Não foi possível criar o relatório. '.$sql);
    }

}

if($type == 'transactions'){
    $preTable = $config['db']['pre'].'transaction';
    $sql = "SELECT * FROM ".$preTable." ".generateWhereClauseTimeStamp($startdate,$enddate);

    $result = $pdo->query($sql);

    if($result){
        $message = array();
        foreach ($result as $res){
            $estado = [];
            if($res['featured'] == 1){
                array_push($estado,'featured');
            }
            if($res['urgent'] == 1){
                array_push($estado,'urgent');
            }

            if($res['highlight'] == 1){
                array_push($estado,'highlight');
            }


            $message[] = array(
                'produto_nome'=>$res['product_name'],
                'username'=>get_user_data(null, $res['seller_id'])['username'],
                'amount'=>$res['amount'],
                'estado'=>$res['status'],
                'metodo'=>($res['transaction_gatway'] == 'wire_transfer') ? 'M-Pesa' : $res['transaction_gatway'],
                'msisdn'=>$res['msisdn'],
                'data'=> date('d M Y', $res['transaction_time']),
                'pacote'=>$estado

            );
        }

        $resp = array('status'=>true, 'message'=>$message);
    }else{
        $resp = array('status'=>false, 'message'=>'Não foi possível criar o relatório. '.$sql);
    }
}

if($type == 'ads'){

}



echo json_encode($resp);

function generateWhereClause($startdate, $enddate){

    $where = '';

    if(!empty($startdate) && !empty($enddate)){
        $where.="WHERE created_at > '$startdate' AND created_at < '$enddate'";
    }

    if(empty($startdate) && !empty($enddate)){
        $where.="WHERE created_at < '$enddate'";
    }

    if(!empty($startdate) && empty($enddate)){
        $where.="WHERE created_at > '$startdate'";
    }

    return $where;
}


function generateWhereClauseTimeStamp($startdate, $enddate){

    $where = '';
    $startdate1 = strtotime($startdate);
    $enddate1 = strtotime($enddate);

    if(!empty($startdate) && !empty($enddate)){
        $where.="WHERE transaction_time > '$startdate1' AND transaction_time < '$enddate1'";
    }

    if(empty($startdate) && !empty($enddate)){
        $where.="WHERE transaction_time < '$enddate1'";
    }

    if(!empty($startdate) && empty($enddate)){
        $where.="WHERE transaction_time > '$startdate1'";
    }

    return $where;
}

