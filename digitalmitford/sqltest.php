<?php
/**
 * Created by PhpStorm.
 * User: EBB8
 * Date: 6/25/2015
 * Time: 5:44 PM
 */

$servername = "dxcvm05.psc.edu/localhost:3306";
$username = "root";
$password = "kai1yal";
$database = "DigiMitford";

//Create connection
$conn = new mysqli_connect ($servername, $username, $password, $database, 3306);

//mysqli_connect("localhost","my_user","my_password","my_db");

//Check connection
if (!conn) {
    die (echo "<html><head>My SQL Test Failure</head><body>Connection failed:</body> </html>" . mysqli_connect_error());
}
echo
"<html>
<head>My SQL Test</head>
<body>A successful connection!</body>

</html>";