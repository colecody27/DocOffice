<?php
    $conn = mysqli_connect('127.0.0.1', 'root', 'dummyPassword');
    if (!$conn) {
        die('Could not connect to mysql. '.mysqli_error($conn));
    }
    //echo "Connected successfully. \n";
    $dbName = "DocOfficeNew";
    mysqli_select_db($conn, $dbName) or die("Unable to select database $dbName");
    //mysqli_close($conn);
?>
