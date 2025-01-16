<?php
// Connect to the database
$connect = mysqli_connect(
    'db', // Service name in Docker Compose
    'root', // Username (e.g., root)
    '123', // Password
    'mydb' // Database name
);

if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['word'])) {
    $word = mysqli_real_escape_string($connect, $_POST['word']); // Sanitize user input

    // Query to search for the word in the table
    $query = "SELECT synonym FROM dbw WHERE word = '$word'";
    $result = mysqli_query($connect, $query);

    echo "<h1>Search Results</h1>";

    if (mysqli_num_rows($result) > 0) {
        while ($record = mysqli_fetch_assoc($result)) {
            echo "<p>The synonym for <strong>$word</strong> is: <strong>{$record['synonym']}</strong></p>";
        }
    } else {
        echo "<p>No synonym found for <strong>$word</strong>.</p>";
    }
} else {
    // Display the input form
    echo '
        <form method="POST">
            <label for="word">Enter a word:</label>
            <input type="text" id="word" name="word" required>
            <button type="submit">Search</button>
        </form>
    ';
}

mysqli_close($connect);
?>
