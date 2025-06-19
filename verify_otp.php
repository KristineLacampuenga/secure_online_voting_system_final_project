<?php
session_start();

if (!isset($_SESSION['otp']) || !isset($_POST['otp'])) {
    die("Invalid access.");
}

if ($_POST['otp'] == $_SESSION['otp']) {
    $_SESSION['authenticated'] = true;

    if (isset($_SESSION['role']) && $_SESSION['role'] == 'admin') {
        header("Location: admin.php");
    } else {
        header("Location: ballot.php");
    }
    exit();
} else {
    echo "<!DOCTYPE html>
    <html lang='en'>
    <head>
        <meta charset='UTF-8'>
        <title>OTP Error</title>
        <style>
            body {
                background-color: #fdf5e6;
                font-family: 'Courier New', monospace;
                color: #5c3d00;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .error-box {
                background-color: #fffaf0;
                border: 2px solid #deb887;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 10px #deb887;
                text-align: center;
            }
            h2 {
                color: red;
            }
            a {
                margin-top: 15px;
                display: inline-block;
                background-color: #deb887;
                color: #5c3d00;
                text-decoration: none;
                padding: 10px 20px;
                border-radius: 5px;
                font-weight: bold;
            }
            a:hover {
                background-color: #d2b48c;
            }
        </style>
    </head>
    <body>
        <div class='error-box'>
            <h2>Invalid OTP!</h2>
            <a href='otp_verification.php'>Try Again</a>
            <a href='index.php'>New OTP</a>
        </div>
    </body>
    </html>";
}
?>
