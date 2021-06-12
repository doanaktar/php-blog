<?php
session_start();
if( empty($_SESSION['kim']) ){
	echo "<script language='JavaScript'>window.location.href='hata.php'</script>";
}


?>