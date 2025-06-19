<?php
session_start();

$conn = new mysqli("fdb1028.awardspace.net", "4640148_election", "987+_voteWin2025", "4640148_election");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $id = filter_var(trim($_POST['id']), FILTER_SANITIZE_NUMBER_INT);
    $password = trim($_POST['password']);
    $captcha = trim($_POST['captcha']);

    if ($captcha != $_SESSION['captcha_answer']) {
        header("Location: index.php?error=1");
        exit();
    }

    if (!empty($id) && !empty($password) && is_numeric($id)) {
        $stmt = $conn->prepare("SELECT * FROM voters WHERE id = ? LIMIT 1");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result && $result->num_rows > 0) {
            $user_data = $result->fetch_assoc();

            if (password_verify($password, $user_data['password'])) {
                $_SESSION['id'] = $user_data['id'];
                $_SESSION['voter_last_name'] = $user_data['last_name'];
                $_SESSION['voter_code'] = $user_data['VotersCode'];

                $otp = rand(100000, 999999);
                $_SESSION['otp'] = $otp;
                $_SESSION['otp_time'] = time();

                $to = $user_data['email'];
                $subject = "Your OTP Code for GLBCL Voting";
                $message = "Dear " . $user_data['last_name'] . ",\n\nYour OTP code is: $otp\n\nThis code is valid for 5 minutes.\n\nGLBCL Voting System";
                $headers = "From: no-reply@glbclvoting.com";

                if (mail($to, $subject, $message, $headers)) {
                    header("Location: otp_verification.php");
                } else {
                    $_SESSION['otp_error'] = "Failed to send OTP. Please contact support.";
                    header("Location: index.php?error=1");
                }
                exit();
            }
        }
    }

    header("Location: index.php?error=1");
    exit();
}

$conn->close();
?>
