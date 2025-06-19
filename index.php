<?php
session_start();
$error = isset($_GET['error']) && $_GET['error'] === '1';

$num1 = rand(1, 10);
$num2 = rand(1, 10);
$_SESSION['captcha_num1'] = $num1;
$_SESSION['captcha_num2'] = $num2;
$_SESSION['captcha_answer'] = $num1 + $num2;
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>GLBCL Secure Online Voting System</title>
  <link rel="icon" href="logo.png" type="image/png" />
  <link rel="stylesheet" href="loginStyle.css" />
</head>
<body>

<img src="logo.png" alt="Logo" class="logo">

<h2 style="text-align:center;">GLBCL Secure Online Voting System</h2>

<div style="text-align:center;">
  <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
</div>

<div id="id01" class="modal" style="display:<?php echo $error ? 'block' : 'none'; ?>;">
  <form class="modal-content animate" action="captcha.php" method="POST" onsubmit="return validateForm()">
    <div class="container">
      <?php if ($error): ?>
        <div style="color:red; margin-bottom: 15px;">
          Wrong ID, password or CAPTCHA!
        </div>
      <?php endif; ?>

      <label for="user_id">User ID</label>
      <input type="text" id="user_id" name="user_id" placeholder="Enter Your User ID" required />
      <div id="id-error" class="error-text"></div>

      <label for="password"><b>Password</b></label>
      <div class="password-container">
        <input type="password" placeholder="Enter Password" name="password" id="password" required />
        <img
          src="bg-image/close-eye.png"
          id="eye-icon"
          onclick="togglePasswordVisibility()"
          alt="Toggle"
          style="cursor:pointer;"
        />
      </div>
      <div id="password-error" class="error-text"></div>

      <div class="captcha-container">
        <label for="captcha" class="captcha-label">Captcha: Solve</label><br/>
        <img src="captcha_image.php?rand=<?php echo rand(); ?>" alt="CAPTCHA Image" class="captcha-img" style="border:1px solid #ccc; margin:5px 0; display:block;" />
        <input
          type="text"
          id="captcha"
          name="captcha"
          placeholder="Enter your answer"
          required
          pattern="\d+"
          title="Enter the sum of the numbers"
        />
        <div id="captcha-error" class="error-text"></div>
      </div>

      <button type="submit">Login</button>

      <label>
        <input type="checkbox" checked="checked" name="remember" id="rememberMe" /> Remember me
      </label>
    </div>

    <div class="container footer">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">
        Cancel
      </button>
      <span class="psw">Create Account <a href="create_account.php">here</a></span>
    </div>
  </form>
</div>

<div style="margin-top: 40px;">
  <?php include("candidates.php"); ?>
</div>

<div class="slideshow-container">
  <img class="slide-img" src="bg-image/g.jpg" alt="Slide 1" />
  <img class="slide-img" src="bg-image/le.jpg" alt="Slide 2" />
  <img class="slide-img" src="bg-image/b.jpg" alt="Slide 3" />
  <img class="slide-img" src="bg-image/c.jpg" alt="Slide 4" />
  <img class="slide-img" src="bg-image/la.jpg" alt="Slide 5" />
</div>

<script src="script.js"></script>
<footer class="custom-footer">
  &copy; 2025 GLBCL Secure Online Voting System. All rights reserved.
</footer>

</body>
</html>
