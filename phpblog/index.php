<!DOCTYPE html >
<html lang="tr">
<head>
  <title>KAFAMINİCİ</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link rel="icon" type="image/ico" href="img/brain.ico"/>
</head>
<body>
  <nav role="navigation">
    <div id="menuToggle">
      <input type="checkbox"/>

      <span></span>
      <span></span>
      <span></span>
      <ul id="menu">
        <a href="?i=site-hakkinda"><li>Site Hakkında</li></a>
        <a href="?i=merak-edilenler"><li>Merak Edilenler</li></a>
        <a href="?i=sartlar"><li>Şartlar ve Gizlilik</li></a>
        <a href="?i=iletisim"><li>İletişim</li></a><br>
        <a href="https://www.instagram.com/therock/" target="_blank"><img src="img/instagram.svg" width="20" height="20"></a>
        <a href="https://twitter.com/ILBERORTAYLIGSU" target="_blank"><img src="img/twitter.svg" width="20" height="20"></a>
        <a href="https://github.com/doganaktarr" target="_blank"><img src="img/github.svg" width="20" height="20"></a>
        <a href="https://open.spotify.com/user/vx25lw30ber2vocpwow1ilu3p?si=6285e4e697c64a58" target="_blank"><img src="img/spotify.png" width="18" height="18"></a>
      </ul>
    </div>
  </nav>

  <div id="container">
    <div id="banner">
      <h1><a href="?i=anasayfa">KAFAMINICI</a></h1>
    </div>
    <div id="navcontainer">
      <ul id="navlist">
      <li><a href="?i=oznel">ÖZNEL</a></li>
      <li><a href="?i=kitap">KİTAP</a></li>
      <li><a href="?i=film">FİLM</a></li>
      <li><a href="?i=tarih">TARİH</a></li>
      <li><a href="?i=gezi">GEZİ</a></li>
      <li><a href="?i=yasam">YAŞAM</a></li>
      </ul>
    </div>
<?php

$id = @$_GET['i'];
if ( isset($id) == false ) {
    $id = "anasayfa";
}
include($id.".php");
    
?>
    <div id="container foot">
      <div id="footer">
      <center>
        <p><a href="?i=anasayfa">homepage</a> | <a href="mailto:doganaktar@gmail.com">contact</a> | &copy; 2021</a></p>
      </center>
      </div>
    </div>
  </div>
</body>