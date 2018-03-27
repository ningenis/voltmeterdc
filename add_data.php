<?php
    // Connect to MySQL
    include("dbconnect.php");
    $nilaitegangan = $_GET["tegangan"];       //Variabel Sensor Tegangan
	$SQL = "INSERT INTO pengukurandc (nilai_tegangan) VALUES ('$nilaitegangan')"; // SQL Query    
    // Execute SQL
	mysqli_query($dbh, $SQL);
    // To review_data.php
    header("Location: data_review.php");
?>