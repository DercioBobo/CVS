<?php
/*
Copyright (c) 2015 Devendra Katariya (bylancer.com)
*/
require_once('includes.php');

// initilize all variable
$params = $columns = $totalRecords = $data = array();
$params = $_REQUEST;
if($params['draw'] == 1)
    $params['order'][0]['dir'] = "desc";

//define index of column
$columns = array(
    0 =>'id',
    1 =>'product_id',
    2 =>'u.username',
    3 =>'amount',
    4 =>'featured',
    5 =>'transaction_gatway',
    6 =>'status',
    7 =>'transaction_time',
    8 =>'msisdn',
    9 =>'mp_transaction_id',
    10 =>'mp_conversation_id',
    11 =>'mp_response_desc',
);

$where = $sqlTot = $sqlRec = "";

// check search value exist
if( !empty($params['search']['value']) ) {
    $where .=" WHERE ";
    $where .=" ( amount LIKE '".$params['search']['value']."%' ";
    $where .=" OR transaction_gatway LIKE '".$params['search']['value']."%' ";
    $where .=" OR u.username LIKE '".$params['search']['value']."%' ";
    $where .=" OR status LIKE '".$params['search']['value']."%' )";
}

// getting total number records without any search
$sql = "SELECT t.*, u.username as username FROM `".$config['db']['pre']."transaction` as t
INNER JOIN `".$config['db']['pre']."user` as u ON u.id = t.seller_id ";
$sqlTot .= $sql;
$sqlRec .= $sql;
//concatenate search sql if value exist
if(isset($where) && $where != '') {

    $sqlTot .= $where;
    $sqlRec .= $where;
}


$sqlRec .=  " ORDER BY ". $columns[$params['order'][0]['column']]." ".$params['order'][0]['dir']." LIMIT ".$params['start']." ,".$params['length']." ";

$queryTot = $pdo->query($sqlTot);
$totalRecords = $queryTot->rowCount();
$queryRecords = $pdo->query($sqlRec);

//iterate on results row and create new index array of data
foreach ($queryRecords as $row) {
    //$data[] = $row;
    $id = $row['id'];
    $username = $row['username'];
    $ad_id = $row['product_id'];
    $ad_title = $row['product_name'];
    $amount = $row['amount'];
    $payment_method = $row['transaction_gatway'];
    $featured = $row['featured'];
    $urgent = $row['urgent'];
    $highlight = $row['highlight'];
    $t_status = $row['status'];
    $transaction_time = date('d M Y', $row['transaction_time']);

    $msisdn = $row['msisdn'];
    $mp_transaction_id = $row['mp_transaction_id'];
    $mp_conversation_id = $row['mp_conversation_id'];
    $mp_response = $row['mp_response_desc'];

    $tans_link = '';
    $premium = '';
    if($row['transaction_method'] == 'Subscription'){

        $premium = '<span class="label label-default">'.$lang['MEMBERSHIP'].'</span>';
        $trans_link = $config['site_url'].'profile/'.$username;
    }else{
        $trans_link = $config['site_url'].'ad/'.$ad_id;
        $featured = $row['featured'];
        $urgent = $row['urgent'];
        $highlight = $row['highlight'];


        if ($featured == "1") {
            $premium = $premium . '<span class="label label-warning">Semanal</span>';
        }

        if ($urgent == "1") {
            $premium = $premium . '<span class="label label-blue">Mensal</span>';
        }

        if ($highlight == "1") {
            $premium = $premium . '<span class="label label-info">Priorizada</span>';
        }

    }



    $status = '';
    if ($t_status == "success"){
        $status = '<span class="label label-success">Success</span>';
    }
    elseif($t_status == "pending") {
        $status = '<span class="label label-warning">Pending</span>';
    }
    elseif($t_status == "failed") {
        $status = '<span class="label label-danger">failed</span>';
    }else{
        $status = '<span class="label label-danger">cancel</span>';
    }

    if($payment_method == "wire_transfer"){
        $payment_method  = '<span class="label label-danger">Mpesa</span>';
    }
    else{
        $payment_method = '<span class="label label-info">'. $payment_method . '</span>';
    }

    $row0 = '<td>
                <label class="css-input css-checkbox css-checkbox-default">
                    <input type="checkbox" class="service-checker" value="'.$id.'" id="row_'.$id.'" name="row_'.$id.'"><span></span>
                </label>
            </td>';
    $row1 = '<td><a href="'.$trans_link.'" target="_blank">'.$ad_title.'</a></td>';
    $row2 = '<td><a href="'.$config['site_url'].'profile/'.$username.'" target="_blank">'.$username.'</a></td>';
    $row3 = '<td>'.$config['currency_sign'].' '.$amount.'</td>';
    $row4 = '<td>'.$premium.'</td>';
    $row5 = '<td>'.$status.'</td>';
    $row6 = '<td>'.$payment_method.'</td>';
//    $row6 = '<td>'.'Mpesa'.'</td>';
    $row7 = '<td>'.$transaction_time.'</td>';
    $row8 = '<td>'.$msisdn.'</td>';
    $row9 = '<td>'.$mp_transaction_id.'</td>';
    $row10 = '<td>'.$mp_conversation_id.'</td>';
    $row11 = '<td>'.$mp_response.'</td>';
    $row12 = '<td class="text-center">
                <div class="btn-group">
                    <a href="#" data-url="panel/transaction_edit.php?id='.$id.'" data-toggle="slidePanel" class="btn btn-xs btn-default"> <i class="ion-edit"></i> Edit</a>
                    <a href="javacript:void(0)" class="btn btn-xs btn-danger item-js-delete" data-ajax-action="deleteTransaction"> <i class="ion-close"></i></a>
                </div>
            </td>';

    $value = array(
        "DT_RowId" => $id,
        0 => $row0,
        1 => $row1,
        2 => $row2,
        3 => $row3,
        4 => $row4,
        5 => $row5,
        6 => $row6,
        7 => $row7,
        8 => $row8,
        9 => $row9,
        10 => $row10,
        11 => $row11,
        12 => $row12
    );
    $data[] = $value;
}

$json_data = array(
    "draw"            => intval( $params['draw'] ),
    "recordsTotal"    => intval( $totalRecords ),
    "recordsFiltered" => intval($totalRecords),
    "data"            => $data   // total data array
);

echo json_encode($json_data);  // send data as json format
?>
