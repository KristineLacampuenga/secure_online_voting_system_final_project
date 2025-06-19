<?php
session_start();
include 'header2.php';

$conn = new mysqli("fdb1028.awardspace.net", "4640148_election", "987+_voteWin2025", "4640148_election");
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

$success = "";
$error = "";

$voters_result = $conn->query("SELECT id FROM voters");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $voter_id = trim($_POST['voter_id']);
    $role = trim($_POST['role']);
    $verify = trim($_POST['verify']);
    $votersCode = trim($_POST['VotersCode']);

    if (!ctype_digit($voter_id)) {
        $error = "Invalid voter ID.";
    }
    elseif (!in_array($role, ['voters', 'admin'])) {
        $error = "Invalid role selected.";
    }
    elseif (!in_array($verify, ['Unverified', 'Verified'])) {
        $error = "Invalid verify status selected.";
    }
    else {
        $check_stmt = $conn->prepare("SELECT id FROM voters WHERE VotersCode = ? AND id != ?");
        $check_stmt->bind_param("si", $votersCode, $voter_id);
        $check_stmt->execute();
        $check_result = $check_stmt->get_result();

        if ($check_result->num_rows > 0) {
            $error = "VotersCode already exists for another voter!";
        } else {
            $stmt = $conn->prepare("UPDATE voters SET role = ?, verify = ?, VotersCode = ? WHERE id = ?");
            $stmt->bind_param("sssi", $role, $verify, $votersCode, $voter_id);

            if ($stmt->execute()) {
                $success = "Voter updated successfully!";
            } else {
                $error = "Error updating voter: " . $stmt->error;
            }
            $stmt->close();
        }
        $check_stmt->close();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Voter Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff8f0;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        form {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        label, select, input {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
        }
        button {
            background-color: sandybrown;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }
        .success {
            color: green;
            text-align: center;
        }
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Edit Voter's Information</h2>

<?php if ($success): ?>
    <p class="success"><?php echo htmlspecialchars($success); ?></p>
    <script>
        setTimeout(() => {
            window.location.href = "code.php";
        }, 2000);
    </script>
<?php endif; ?>

<?php if ($error): ?>
    <p class="error"><?php echo htmlspecialchars($error); ?></p>
<?php endif; ?>

<form method="POST" novalidate>
    <label for="voter_id">Select Voter ID:</label>
    <select name="voter_id" required>
        <option value="">-- Select Voter ID --</option>
        <?php while ($row = $voters_result->fetch_assoc()): ?>
            <option value="<?php echo htmlspecialchars($row['id']); ?>">
                <?php echo htmlspecialchars($row['id']); ?>
            </option>
        <?php endwhile; ?>
    </select>

    <label for="role">Role:</label>
    <select name="role" required>
        <option value="voters">Voter</option>
        <option value="admin">Admin</option>
    </select>

    <label for="verify">Verify:</label>
    <select name="verify" required>
        <option value="Unverified">Unverified</option>
        <option value="Verified">Verified</option>
    </select>

    <label for="VotersCode">Voter Code:</label>
    <input type="text" name="VotersCode" required>

    <button type="submit">Update Voter</button>
</form>
<p style="text-align: center; margin-top: 30px;">
    <a href="tally.php" style="color: brown; font-weight: bold; text-decoration: none;">
        📊 View Tally Results
    </a>
</p>

<?php
include 'footer.php';
?>

</body>
</html>
