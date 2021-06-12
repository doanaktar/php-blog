-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Haz 2021, 22:39:42
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `s_title` text COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `category` text COLLATE utf8_turkish_ci NOT NULL,
  `author` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `post`
--

INSERT INTO `post` (`id`, `title`, `s_title`, `content`, `category`, `author`, `date`, `img`) VALUES
(62, 'FİLM DENEME', 'film-deneme', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'film', 1, '2021-06-09 04:54:56', 'resim3.jpeg'),
(63, 'TARIH DENEME', 'tarih-deneme', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'tarih', 1, '2021-06-09 04:55:24', 'resim4.jpeg'),
(64, 'GEZİ DENEME', 'gezi-deneme', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'gezi', 1, '2021-06-09 04:56:02', 'resim5.jpeg'),
(76, 'YAŞAM DENEME', 'yaşam-deneme', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'yasam', 1, '2021-06-09 05:15:57', 'resim6.jpeg'),
(77, 'ÖZNEL ÖRNEK', 'oznel-ornek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'oznel', 1, '2021-06-09 05:16:48', 'resim7.jpeg'),
(78, 'KİTAP ÖRNEK', 'kitap-örnek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'kitap', 1, '2021-06-09 05:17:23', 'resim8.jpeg'),
(79, 'FİLM ÖRNEK', 'film-örnek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'film', 1, '2021-06-09 05:17:47', 'resim9.jpeg'),
(80, 'TARİH ÖRNEK', 'tarih-örnek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'tarih', 1, '2021-06-09 05:18:44', 'resim10.jpeg'),
(81, 'GEZİ ÖRNEK', 'gezi-örnek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'gezi', 1, '2021-06-09 05:19:15', 'resim11.jpeg'),
(82, 'YAŞAM ÖRNEK', 'yaşam-örnek', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'yasam', 1, '2021-06-09 05:19:42', 'resim12.jpeg'),
(84, 'TEST YAZI', 'test-yazı', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'kitap', 1, '2021-06-09 05:27:59', 'resim14.jpeg'),
(85, 'BLOG YAZI', 'blog-yazı', 'Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur. Lorem ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem İpsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem İpsum pasajları da içeren Letrasat yapraklarının yayınlanması ile ve yakın zamanda Aldus PakeMaker gibi Lorem İpsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 'film', 1, '2021-06-09 05:28:32', 'resim15.jpeg'),
(87, 'ORNEK POST', 'ornek-post', 'jshfdkjh ldkfjh lksdjfhk jsdfjfgjkdh flgkjdshf gkjdsfh gkjdshfgjkdf ghkjfdg', 'kitap', 1, '2021-06-09 06:38:51', 'resim17.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `id` int(11) NOT NULL,
  `kullanici` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(64) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `kullanici`, `sifre`) VALUES
(1, 'admin', '12345'),
(3, 'dogan', '123');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Tablo için AUTO_INCREMENT değeri `yoneticiler`
--
ALTER TABLE `yoneticiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
