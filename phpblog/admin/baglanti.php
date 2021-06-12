<?php
$conn = mysqli_connect("localhost","root","","proje");

if ( mysqli_connect_errno() ) {
    echo "Bağlantı Başarısız. Hata :".mysql_connect_error();
    die();
}
else {
//    echo "bağlantı başarılı";
}

mysqli_query($conn,"SET NAMES 'utf8'");

//mysqli_close($conn);


?>