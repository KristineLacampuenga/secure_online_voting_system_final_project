<?php
session_start();
$decrypt = isset($_POST['decrypt']);

$conn = new mysqli("fdb1028.awardspace.net", "4640148_election", "987+_voteWin2025", "4640148_election");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function decryptAES($data) {
    $secret_key = 'this_is_a_strong_secret_key_32bytes!';
    $cipher_method = 'AES-256-CBC';

    $decoded = base64_decode($data, true);
    if ($decoded === false || strlen($decoded) < 17) {
        return $data;
    }

    $iv_length = openssl_cipher_iv_length($cipher_method);
    $iv = substr($decoded, 0, $iv_length);
    $ciphertext = substr($decoded, $iv_length);
    $decrypted = openssl_decrypt($ciphertext, $cipher_method, $secret_key, OPENSSL_RAW_DATA, $iv);
    return $decrypted !== false ? $decrypted : $data;
}

function startPage() {
    echo <<<HTML
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Election Tally</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #fffaf0;
      margin: 0;
      padding: 20px;
    }
    .container {
      max-width: 900px;
      margin: 0 auto;
      background: #ffffff;
      padding: 20px;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }
    h1 {
      text-align: center;
      color: #8b4513;
      font-size: 64px;
    }
    h2 {
      color: #a0522d;
      margin-top: 40px;
    }
    form {
      text-align: center;
      margin-bottom: 20px;
    }
    button {
      padding: 10px 20px;
      background-color: #deb887;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 16px;
    }
    a {
      margin-left: 20px;
      text-decoration: none;
      color: #333;
      background: #f0e68c;
      padding: 8px 16px;
      border-radius: 5px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }
    th, td {
      padding: 8px;
      border: 1px solid #deb887;
      text-align: left;
    }
    th {
      background-color: #f4a460;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #fff5e1;
    }
    tr:hover {
      background-color: #ffefd5;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Election Tally Results</h1>
    <form method="post">
        <button type="submit" name="decrypt" value="1">🔓 Decrypt Votes</button>
        <a href="code.php">🏠 Home</a>
    </form>
HTML;
}

function endPage() {
    echo "</div></body></html>";
}

function tallyColumns($conn, $title, $table, $columns, $decrypt = false) {
    echo "<h2>$title</h2>";

    $votes = [];

    foreach ($columns as $col) {
        $sql = "SELECT `$col` AS candidate FROM `$table` WHERE `$col` IS NOT NULL";
        $result = $conn->query($sql);

        while ($row = $result->fetch_assoc()) {
            $name = $row['candidate'];
            if ($decrypt) {
                $name = decryptAES($name);
            }
            if (!empty($name)) {
                $votes[$name] = ($votes[$name] ?? 0) + 1;
            }
        }
    }

    arsort($votes);

    echo "<table><tr><th>Candidate</th><th>Votes</th></tr>";
    foreach ($votes as $name => $count) {
        echo "<tr><td>" . htmlspecialchars($name) . "</td><td>$count</td></tr>";
    }
    echo "</table>";
}

function tallySingleColumn($conn, $title, $table, $column, $decrypt = false) {
    echo "<h2>$title</h2>";

    $votes = [];
    $sql = "SELECT `$column` AS candidate FROM `$table` WHERE `$column` IS NOT NULL";
    $result = $conn->query($sql);

    while ($row = $result->fetch_assoc()) {
        $name = $row['candidate'];
        if ($decrypt) {
            $name = decryptAES($name);
        }
        if (!empty($name)) {
            $votes[$name] = ($votes[$name] ?? 0) + 1;
        }
    }

    arsort($votes);

    echo "<table><tr><th>Candidate</th><th>Votes</th></tr>";
    foreach ($votes as $name => $count) {
        echo "<tr><td>" . htmlspecialchars($name) . "</td><td>$count</td></tr>";
    }
    echo "</table>";
}

startPage();

tallyColumns($conn, "🗳️ Senator Tally", "senator", [
    "sen1", "sen2", "sen3", "sen4", "sen5", "sen6", 
    "sen7", "sen8", "sen9", "sen10", "sen11", "sen12"
], $decrypt);

tallyColumns($conn, "🏛️ City Councilor Tally", "city_councilor", [
    "councilor1", "councilor2", "councilor3", "councilor4", "councilor5", "councilor6",
    "councilor7", "councilor8", "councilor9", "councilor10", "councilor11", "councilor12"
], $decrypt);

tallySingleColumn($conn, "🏛️ House Representative Tally", "house_rep", "candidate_name", $decrypt);
tallySingleColumn($conn, "👔 Mayor Tally", "mayor", "candidate_name", $decrypt);
tallySingleColumn($conn, "👔 Vice Mayor Tally", "vice_mayor", "candidate_name", $decrypt);
tallySingleColumn($conn, "🗳️ Partylist Tally", "partylist", "partylist", $decrypt);

$conn->close();
endPage();
?>
