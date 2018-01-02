<?php
    require_once("config.php");
    $letterPath = htmlspecialchars($_GET["letterPath"]);
    $contents = REST_PATH . "$letterPath";
    $result = file_get_contents($contents);
    echo $result;
?>

