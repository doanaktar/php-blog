<?php
    include("admin/baglanti.php");
?>

<div id="content">


<?php

$sonuc = mysqli_query($conn, "select * from post where category='yasam' ORDER BY id DESC");

$say = mysqli_num_rows($sonuc);

if ( $say > 0 ) {

while ( $satir = mysqli_fetch_array($sonuc)  ) {
    echo "<h2>$satir[1]</h2>";
    echo  "<img src='admin/upload/$satir[7]' width='1025' height='600'>";
    echo  "<p>$satir[3]</p>";
    echo  "<p class='post'> <a href='#' class='readmore'>Read more</a> <a href='#' class='comments'>Comments (3)</a> <span class='date'>April 26, 2007</span> </p>";    
  
 }       
}
?>

</div>


