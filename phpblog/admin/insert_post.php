<html>
<head>
<title>Formlar</title>
<meta charset = "utf-8">
<title></title>
</head>
<body>

<?php
$title = $_POST["title"];
$seo = $_POST["seo-title"];
$category = $_POST["category"];
$content = $_POST["content"];
$author = $_POST["author"];

$resim_ismi = $_FILES["resim"]["name"];
$gecici_ad=$_FILES["resim"]["tmp_name"];
$kalici_yol_ad="upload/".$resim_ismi;
 
if ($_FILES["resim"]["error"]) // hata olustu ise
   echo "Hata : ".$_FILES["resim"]["error"];
else{
   if (file_exists($kalici_yol_ad))
      echo "Boyle bir resim zaten var";
   else{
      if ($_FILES["resim"]["size"]>1024*1024*3) //boyut kontrol
         echo "3mb'dan kucuk bir resim seciniz.";
      else{
         if ($_FILES["resim"]["type"]=="image/jpeg"){
            if (move_uploaded_file($gecici_ad,$kalici_yol_ad)) // eger dosya kaydedilirse
               echo "Dosya basari ile yuklendi.";
            else
               echo "Dosya yukleme basarisiz.";
         }
         else
            echo "Lutfen JPEG dosyasi seciniz.";
      }
   }
}
include("baglanti.php");
$query = "INSERT INTO post (title, s_title, content, category, author, img) VALUES ('$title', '$seo', '$content', '$category', '$author', '$resim_ismi')";

mysqli_query($conn, $query);
echo "<script language='JavaScript'>window.location.href='index.php'</script>";
 
?>

</body>
</html>
