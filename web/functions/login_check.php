<?php
session_start();
if(!isset($_SESSION['user']) && $_SESSION['user'] == null ){
    header('Location: ../register.php?Msg=LoginFirst');
}
?>