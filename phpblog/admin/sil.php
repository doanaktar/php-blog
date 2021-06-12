<?php
include('session-kontrol.php');
$kim = $_SESSION['kim'];
include('baglanti.php');

$i = $_GET['islem_no'];
echo $i;

$sorgu = mysqli_query($conn, "delete from post where id=$i");
echo "<script language='JavaScript'>window.location.href='index.php'</script>";

?>