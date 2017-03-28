<?php
/**
 * Created by PhpStorm.
 * User: EBB8
 * Date: 6/25/2015
 * Time: 7:55 PM
 */
<?php
$mysqli = new mysqli("dxcvm05.psc.edu", "root", "kai1yal", "DigiMitford");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "\n";

$mysqli = new mysqli("dxcvm05.psc.edu", "root", "kai1yal", "DigiMitford", 3306);
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

echo $mysqli->host_info . "\n";
?>