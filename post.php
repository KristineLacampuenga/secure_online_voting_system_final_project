<?php
session_start();
if (!isset($_SESSION['user_id']) || !isset($_SESSION['authenticated']) || $_SESSION['authenticated'] !== true) {
    header("Location: index.php");
    exit();
}

include("header.php");

$conn = new mysqli("fdb1028.awardspace.net", "4640148_election", "987+_voteWin2025", "4640148_election");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$user_id = $_SESSION['user_id'];
$stmt = $conn->prepare("SELECT id, last_name, VotersCode FROM voters WHERE user_id = ?");
$stmt->bind_param("s", $user_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    die("Error: Voter not found.");
}
$voter = $result->fetch_assoc();
$id = $voter['id'];
$last_name = $voter['last_name'];
$votersCode = $voter['VotersCode'];

// Decrypt function
function decryptAES($ciphertext) {
    $secret_key = 'this_is_a_strong_secret_key_32bytes!';
    $cipher_method = 'AES-256-CBC';
    $ciphertext = base64_decode($ciphertext);
    $iv_length = openssl_cipher_iv_length($cipher_method);
    $iv = substr($ciphertext, 0, $iv_length);
    $encrypted = substr($ciphertext, $iv_length);
    return openssl_decrypt($encrypted, $cipher_method, $secret_key, OPENSSL_RAW_DATA, $iv);
}

function getSingleVote($conn, $table, $field, $id, $last_name, $votersCode) {
    $stmt = $conn->prepare("SELECT $field FROM $table WHERE id = ? AND last_name = ? AND VotersCode = ?");
    $stmt->bind_param("sss", $id, $last_name, $votersCode);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $vote = $result->fetch_assoc();
        return decryptAES($vote[$field]);
    }
    return "No vote recorded.";
}

function getMultipleVotes($conn, $table, $fields, $id, $last_name, $votersCode) {
    $cols = implode(", ", $fields);
    $stmt = $conn->prepare("SELECT $cols FROM $table WHERE id = ? AND last_name = ? AND VotersCode = ?");
    $stmt->bind_param("sss", $id, $last_name, $votersCode);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $encryptedVotes = $result->fetch_assoc();
        $decryptedVotes = [];
        foreach ($encryptedVotes as $vote) {
            $decryptedVotes[] = decryptAES($vote);
        }
        return $decryptedVotes;
    }
    return [];
}
?>

<style>
    body {
        background-color: #fdf5e6;
        font-family: 'Courier New', monospace;
        color: #5c3d00;
    }
    .receipt-container {
        display: flex;
        justify-content: center;
        margin-top: 40px;
    }
    .receipt {
        width: 600px;
        background-color: #fffaf0;
        border: 2px solid #deb887;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px #deb887;
    }
    .receipt h2 {
        text-align: center;
        color: #a0522d;
        margin-bottom: 30px;
    }
    .receipt p {
        margin: 5px 0;
        font-size: 16px;
    }
    .receipt .section {
        margin-top: 20px;
    }
    .vote-list {
        padding-left: 20px;
    }
    hr {
        border: none;
        border-top: 1px dashed #deb887;
        margin: 20px 0;
    }
</style>

<div class="receipt-container">
    <div class="receipt">
        <h2>Official Voting Receipt</h2>

        <p><strong>User ID:</strong> <?= htmlspecialchars($user_id) ?></p>
        <p><strong>Last Name:</strong> <?= htmlspecialchars($last_name) ?></p>
        <p><strong>Voter's Code:</strong> <?= htmlspecialchars($votersCode) ?></p>
        <hr>

        <div class='section'><strong>Mayor:</strong><br>&nbsp;&nbsp;<?= htmlspecialchars(getSingleVote($conn, 'mayor', 'candidate_name', $id, $last_name, $votersCode)) ?></div>
        <div class='section'><strong>Vice Mayor:</strong><br>&nbsp;&nbsp;<?= htmlspecialchars(getSingleVote($conn, 'vice_mayor', 'candidate_name', $id, $last_name, $votersCode)) ?></div>
        <div class='section'><strong>House Representative:</strong><br>&nbsp;&nbsp;<?= htmlspecialchars(getSingleVote($conn, 'house_rep', 'candidate_name', $id, $last_name, $votersCode)) ?></div>
        <div class='section'><strong>Partylist:</strong><br>&nbsp;&nbsp;<?= htmlspecialchars(getSingleVote($conn, 'partylist', 'partylist', $id, $last_name, $votersCode)) ?></div>

        <div class='section'><strong>Senators:</strong>
            <div class='vote-list'>
                <?php
                $senators = getMultipleVotes($conn, 'senator', [
                    'sen1','sen2','sen3','sen4','sen5','sen6',
                    'sen7','sen8','sen9','sen10','sen11','sen12'
                ], $id, $last_name, $votersCode);
                if (!empty($senators)) {
                    foreach ($senators as $i => $senator) {
                        echo ($i + 1) . ". " . htmlspecialchars($senator) . "<br>";
                    }
                } else {
                    echo "No vote recorded.";
                }
                ?>
            </div>
        </div>

        <div class='section'><strong>City Councilors:</strong>
            <div class='vote-list'>
                <?php
                $councilors = getMultipleVotes($conn, 'city_councilor', [
                    'councilor1','councilor2','councilor3','councilor4','councilor5','councilor6',
                    'councilor7','councilor8','councilor9','councilor10','councilor11','councilor12'
                ], $id, $last_name, $votersCode);
                if (!empty($councilors)) {
                    foreach ($councilors as $i => $councilor) {
                        echo ($i + 1) . ". " . htmlspecialchars($councilor) . "<br>";
                    }
                } else {
                    echo "No vote recorded.";
                }
                ?>
            </div>
        </div>
    </div>
</div>
