<?php
/**
 * Created by PhpStorm.
 * User: EBB8
 * Date: 6/25/2015
 * Time: 5:44 PM
 */

$servername = "dxcvm10.psc.edu";
$username = "mitford";
$password = "r13nz1";
$database = "DigiMitford";

//Create connection
$conn = mysqli_connect ($servername, $username, $password, $database, 3306);

//mysqli_connect("localhost","my_user","my_password","my_db");

//Check connection
if (!conn || mysqli_connect_errno()) {
    die ("My SQL Test Failure</head><body>Connection failed:" . mysqli_connect_error());
}
echo("<html><head>My SQL Test</head><body>A successful connection!</body></html>");
?>

