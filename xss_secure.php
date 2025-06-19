<?php
if (isset($_GET['message'])) {
    $message = htmlspecialchars($_GET['message'], ENT_QUOTES, 'UTF-8');
} else {
    $message = '';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>XSS Safe Input Display</title>
</head>
<body>

<?php if ($message !== ''): ?>
    <h1><?php echo $message; ?></h1>
<?php endif; ?>

<form action="xss_secure.php" method="GET">
    <input type="text" name="message" placeholder="Enter a message" />
    <input type="submit" value="Submit" />
</form>

</body>
</html>
