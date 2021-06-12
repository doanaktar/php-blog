<?php
session_start();
include('baglanti.php');
?>

<!doctype html>
<html lang = "tr">
	<head>
		<meta charset = "utf-8">
		<title>Giriş Sayfası</title>
	</head>
	<body>
        <center>
        <?php
            $u = @$_POST['kullanici'];
            $s = @$_POST['sifre'];

            if ( !isset($u) OR !isset($s)){
                echo "<script language='JavaScript'>window.location.href='hata.php'</script>";
            }
            elseif ( $u == "" OR $s == "" ){
                echo "Kullanici adi veya sifre bos birakilamaz<br>";
                echo "<a href='giris.php'>Giris Sayfasi</a>";
            }
            else{
                $sorgu = mysqli_query($conn, "select * from yoneticiler where kullanici='$u'");

                $satir = mysqli_fetch_array($sorgu);
                $s2 = $satir['sifre'];

                if ( $s != $s2 ){
                    echo "Kullanici adi veya sifre yanlis<br>";
                    echo "<a href='giris.php'>Giris Sayfasi</a>";

                }
                else{
                    $_SESSION['kim'] = $u;
                    echo "<script language='JavaScript'>window.location.href='index.php'</script>";
                }
            }
        ?>
        </center>	
    </body>
</html>
