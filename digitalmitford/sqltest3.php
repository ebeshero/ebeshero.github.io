<?php
/**
 * Created by PhpStorm.
 * User: EBB8
 * Date: 6/25/2015
 * Time: 5:44 PM
 */

$servername = "dxcvm05.psc.edu";
$username = "mitford";
$password = "r13nz1";
$database = "DigiMitford";

//Create connection
$conn = mysqli_connect ($servername, $username, $password, $database, 3306);

//mysqli_connect("localhost","my_user","my_password","my_db");

//Check connection
if (!conn || mysqli_connect_error()) {
    die ("<html><head>My SQL Test Failure</head><body>Connection failed:" . mysqli_connect_error());
}
echo("<html><head>My SQL Test</head><body>A successful connection!");

$sql = "SELECT Task_id, mitfordmsID, Filename, Editor_id, Role FROM assignments";
$result = $conn->query($sql);

if( $result->num_rows > 0) {
//make the table
echo "<table><tr><th>Task Id</th>
<th>Mitford MS Id</th>
<th>File Name</th>
<th>Editor Id</th>
<th>Role</th>
</tr>";
//output data from each row

while( $row = $result->fetch_assoc()) {
echo "<tr><td>".$row["Task_id"]."</td>
           <td>".$row["mitfordmsID"]."</td>
           <td>".$row["Filename"]."</td>
           <td>".$row["Editor_id"]."</td>
           <td>".$row["Role"]."</td>
           </tr>";
           }
           echo "</table></body></html>";
           } else {
           echo "0 results";
           }
           $conn->close();
?>




