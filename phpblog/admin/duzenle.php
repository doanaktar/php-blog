<?php
include('session-kontrol.php');
$kim = $_SESSION['kim'];
include("baglanti.php");


?>
<!doctype html>
<html lang = "tr">
	<head>
		<meta charset = "utf-8">
		<title></title>
	</head>
	<body>
<?php
if ( isset($_POST['submit']) ) {
    $title = $_POST["title"];
    $seo = $_POST["s_title"];
    $content = $_POST["content"];
    $id = $_POST['kayit_id'];

    $sql = "update post set title='$title',
                        s_title='$seo',
                        content='$content' where id=$id";
    echo $sql;       
       
    $sonuc = mysqli_query($conn,$sql);
    echo "<script language='JavaScript'>window.location.href='index.php'</script>";


}
else {
    $i = $_GET['islem_no'];
    $sonuc = mysqli_query($conn, "select * from post where id=$i");
    $satir = mysqli_fetch_array($sonuc);
}
?>


        <center>
        <form name="posting" method="post" action="duzenle.php">
            <input name="author" type="hidden" value="1">
            <table>
                <tr>
                    <td>Başlık:</td>
                    <td><input type="text" name="title"
                    required="required" autofocus="autofocus" value="<?php echo $satir['title']  ?>"></td>
                </tr>
                <tr>
                    <td>Seo Başlık:</td>
                    <td><input type="text" name="s_title" required="required" value="<?php echo $satir['s_title']  ?>"></td>
                </tr>
                <tr>
                    <td>Yazi:</td>
                    <td>
                        <textarea name="content" rows="20" cols="80" required="required"><?php echo htmlspecialchars($satir['content']); ?></textarea>
                    </td>
                </tr>
                <tr>
                <td colspan=2 align="right"> 
                <input type="hidden" name="kayit_id" value="<?php echo $i  ?>">
                <input type="submit" name="submit" Value="Düzenle">  </td>   
                </tr>           
                </form>         
            </table>
        </form>
</center>
	</body>
</html>