<?php
include('session-kontrol.php');
$kim = $_SESSION['kim'];
?>

<!doctype html>
<html lang = "tr">
	<head>
		<meta charset = "utf-8">
		<title></title>
	</head>
	<body>
        <form name="posting" method="post" action="insert_post.php" enctype="multipart/form-data">
            <input name="author" type="hidden" value="1">
            <table>
                <tr>
                    <td>Başlık:</td>
                    <td><input type="text" name="title" required="required" autofocus="autofocus"></td>
                </tr>
                <tr>
                    <td>Seo Başlık:</td>
                    <td><input type="text" name="seo-title" required="required"></td>
                </tr>
                <tr>
                    <td>Yazi:</td>
                    <td>
                        <textarea name="content" rows="20" cols="80" required="required"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Kategori: </td>
                    <td><select name="category">
                        <option value="oznel">Öznel</option>
                        <option value="kitap">Kitap</option>
                        <option value="film">Film</option>
                        <option value="tarih">Tarih</option>
                        <option value="gezi">Gezi</option>
                        <option value="yasam">Yaşam</option>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td>Resim Seçiniz: </td>
                    <td><input type="file" name="resim"></td>
                 </tr>
                <tr>
                    <td><input type="submit" name = "gonder" value="Gonder"></td>
                    <td><input type="reset" value="Iptal"></td>
                </tr>               
                </form>         
            </table>
        </form>
	</body>
</html>