<?php
$MyUsername = "root";  // Username MySQL
$MyPassword = "";  // Password MySQL 
$MyHostname = "localhost";	// Host
$Database = "voltmeter";    // DB Name
$dbh = mysqli_connect($MyHostname,$MyUsername,$MyPassword,$Database); // Connect to MySQL
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>