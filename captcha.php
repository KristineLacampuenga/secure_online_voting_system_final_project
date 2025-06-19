<?php
session_start();

$conn = new mysqli("fdb1028.awardspace.net", "4640148_election", "987+_voteWin2025", "4640148_election");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$user_id = trim($_POST['user_id']);
$password = trim($_POST['password']);
$captcha = trim($_POST['captcha']);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OTP Generation</title>
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
            width: 500px;
            text-align: center;
        }

        h2 {
            color: #a0522d;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #deb887;
            color: #5c3d00;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        a:hover {
            background-color: #d2b48c;
        }

        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
<?php
if ($captcha != $_SESSION['captcha_answer']) {
    echo "<p class='error'>Invalid CAPTCHA!</p>";
} else {
    $stmt = $conn->prepare("SELECT * FROM voters WHERE user_id = ?");
    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();

        if (password_verify($password, $user['password'])) {
            $_SESSION['otp'] = rand(100000, 999999);
            $_SESSION['user_id'] = $user_id;
            $_SESSION['role'] = $user['role'];

            echo "<h2>Your OTP is: " . $_SESSION['otp'] . "</h2>";
            echo '<a href="otp_verification.php">Proceed to OTP Verification</a>';
        } else {
            echo "<p class='error'>Invalid password!</p>";
        }
    } else {
        echo "<p class='error'>Invalid credentials!</p>";
    }
}
$conn->close();
?>
</div>

</body>
</html>
