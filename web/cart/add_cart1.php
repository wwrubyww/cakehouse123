<?php 
session_start();
$is_existed = "false";
if(isset($_SESSION['Cart']) && $_SESSION['Cart'] != null){
    for($i = 0 ; $i < count($_SESSION['Cart']); $i++){
      if($_POST['product_id'] == $_SESSION['Cart'][$i]['product_id']){
        $is_existed = "true";
        go_back($is_existed);
      }
    }
  }
if($is_existed == "false"){
$temp['product_id']   = $_POST['product_id'];
$temp['product_name'] = $_POST['product_name'];
$temp['pic']          = $_POST['pic'];
$temp['price']        = $_POST['price'];
$temp['quantity']     = $_POST['quantity'];
//將陣列資料加入到session Cart中
$_SESSION['Cart'][] = $temp;
go_back($is_existed);
}

function go_back($is_existed){
    $location = $_SERVER['HTTP_REFERER']."&Existed=" .$is_existed;
    header(sprintf('Location: %s ', $location));
}
?>