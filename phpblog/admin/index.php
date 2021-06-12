<?php
include('session-kontrol.php');
$kim = $_SESSION['kim'];
?>


<!doctype html>
<html lang = "tr">
	<head>
		<meta charset = "utf-8">
		<title>Yonetici Paneli</title>
	</head>
	<body>
<?php
include('baglanti.php');

$sonuc = mysqli_query($conn, "select * from post ");
$say = mysqli_num_rows($sonuc);

?>
<table border=0 width='100%'>
<tr>
<td align="left" width='50%'> Hoş geldin : <?php echo $kim;  ?> </td>
<td align="right" width='50%'> Çıkış İçin <a href='cikis.php'>Tiklayiniz</a> </td>
</tr>
</table>



<h1> Yönetim Paneli </h1>
<table border=0 width='100%'>
<tr>
<td width='30%'> <u>Baslik</u> </td>
<td width='40%'> <u>Blog Yazisi</u> </td>
<td width='10%'> <u>Kategori</u> </td>
<td align="center" width='10%'> <u>Duzenle</u> </td>
<td align="center" width='10%'> <u>Sil</u> </td>
</tr>

<?php
if ( $say > 0 ) {

    while ( $satir = mysqli_fetch_array($sonuc)  ) {
        echo "<tr>";
        echo "<td>"."<h3>$satir[1]</h3>"."</td>";
        echo "<td>".substr($satir[3], 0, 50)."..."."</td>";
        echo "<td>"."$satir[4]"."</td>";
        echo "<td align='center'><a href='duzenle.php?islem_no=".$satir['id']."'><img src='../img/duzenle.png'></a></td>";
        echo "<td align='center'><a href='sil.php?islem_no=".$satir['id']."'><img src='../img/sil.png'></a></td>";
        echo "</tr>";

        
     }       
    }
?>
</table>
<a href='ekle.php'>Yeni Kayit Ekle</a>

	</body>
</html>