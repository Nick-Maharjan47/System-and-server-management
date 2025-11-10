<?php
// Database credentials
$servername = "localhost";
$username = "check";
$password = "rDEetGxq82DCE";
$dbname = "check";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully<br>";

// SQL query to get the most recently added string
$sql = "SELECT text FROM `log` ORDER BY date DESC LIMIT 1";
$result = mysqli_query($conn, $sql);

if ($result) {
    // Output data of each row
    while ($row = mysqli_fetch_assoc($result)) {
        echo $row["text"];
    }
} else {
    echo "0 results";
}

// Close connection
mysqli_close($conn);
?>
