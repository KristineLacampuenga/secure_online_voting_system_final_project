<?php
session_start();

header("Content-type: image/png");

$width = 150;
$height = 50;
$image = imagecreatetruecolor($width, $height);

$bgColor = imagecolorallocate($image, 255, 255, 255);  // white
$textColor = imagecolorallocate($image, 0, 0, 0);      // black
$noiseColor = imagecolorallocate($image, 100, 120, 180); // bluish noise

imagefilledrectangle($image, 0, 0, $width, $height, $bgColor);

$num1 = isset($_SESSION['captcha_num1']) ? $_SESSION['captcha_num1'] : rand(1, 10);
$num2 = isset($_SESSION['captcha_num2']) ? $_SESSION['captcha_num2'] : rand(1, 10);

$text = "$num1 + $num2 = ?";

for ($i = 0; $i < 1000; $i++) {
    imagesetpixel($image, rand(0,$width), rand(0,$height), $noiseColor);
}

for ($i = 0; $i < 5; $i++) {
    imageline($image, rand(0,$width), rand(0,$height), rand(0,$width), rand(0,$height), $noiseColor);
}

$font_size = 20;
$x = 10;
$y = 35;

$font_path = __DIR__ . '/arial.ttf';

if (file_exists($font_path)) {
    $angle = rand(-15, 15);
    imagettftext($image, $font_size, $angle, $x, $y, $textColor, $font_path, $text);
} else {
    imagestring($image, 5, $x, $y - 15, $text, $textColor);
}

imagepng($image);
imagedestroy($image);
