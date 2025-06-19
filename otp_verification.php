<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OTP Verification</title>
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

        .container {
            background-color: #fffaf0;
            border: 2px solid #deb887;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #deb887;
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #a0522d;
            margin-bottom: 20px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #deb887;
            border-radius: 5px;
            font-family: inherit;
            font-size: 16px;
        }

        button {
            background-color: #deb887;
            color: #5c3d00;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #d2b48c;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>OTP Verification</h2>
    <form action="verify_otp.php" method="POST">
        <p>Enter the OTP sent to your email:</p>
        <input type="text" name="otp" placeholder="6-digit OTP" required>
        <button type="submit">Verify</button>
    </form>
</div>

</body>
</html>
