<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Info</title>
    <!-- Include Bootstrap CSS via CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">

        <p><a href="logout.php">Logout</a></p>

        <h1>User Info</h1>

        <?php
            $username = $_POST["username"];
            $password = $_POST["password"];

            $db_servername = "db";
            $db_username = "root";
            $db_password = "rootpassword";
            $db_name = "People";

            $conn = new mysqli($db_servername, $db_username, $db_password, $db_name);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        ?>
        <?php
            $userid = (isset($_GET['id']) ? $_GET['id'] : NULL);

            // I struggled with figuring out how to show a single thing from the db, but found this line of code on stack overflow
            // https://stackoverflow.com/questions/59780348/how-to-get-the-data-that-only-the-current-login-user-has-previously-input-into-t
            $sql = "SELECT `id`, `lastname`, `firstname`, `email` FROM People.Users WHERE `id` = '" . $_SESSION['id'] . "'";

            $result = $conn->query($sql);

            echo "<table class=\"table table-dark\">";
            echo "<tr><td>First Name</td><td>Last Name</td><td>Email</td></tr>";

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {

                    echo "<tr>";
                    echo "<td>" . $row["firstname"] . "</td>";
                    echo "<td>" . $row["lastname"] . "</td>";
                    echo "<td>" . $row["email"] . "</td>";
                    echo "</tr>";

                }
            } else {
                echo "<tr><td colspan=\"5\">No users found.</td></tr>";
            }

            echo "</table>";

        ?>
        <?php $conn->close(); ?>

    </div>



    <!-- Include Bootstrap JS (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



