<?php
if(!defined('TEMPLATE')){
	die('Bạn không có quyền truy cập vào file này !');
}
$conn = mysqli_connect('localhost', 'root', '', 'do_an_my_love');
if($conn){
	mysqli_query($conn, "SET NAMES 'utf8'");
}
else{
	die("Không thể kết nối tới MySQL Server !");
}
?>