
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Digital Mitford: Letter View</title>
    <link rel="stylesheet" type="text/css" href="mitfordletter.css" /><script type="text/javascript" src="MRMLetters.js">/**/</script>
</head>
<body>

<ul id="siteMenu">
            <li class="title"><span class="mainTitle">Digital Mitford:</span><br/> <span class="subTitle">The Mary Russell Mitford Archive</span></li>
            <li class="mainMenu">
                <ul class="mainMenu">
                    <li class="section">
                       <a href="index.html">Main Home</a>
                    </li>
                    <li class="section">
                       <ul class="subSec">
                           <li class="subMenu"><a href="letters.html">Letters Main</a></li> 
                           <li class="subMenu"><a href="lettersInterface.html">Choose a new letter</a></li>
                       </ul>
                    </li>
                   <li class="section">
                       This letter: TEI encoding
                   </li> 

                </ul>      
            </li>
        </ul>
    
<?php
    require_once("config.php");
    $uri = htmlspecialchars($_GET["uri"]);
    $contents = REST_PATH . "/db/queries/letterText.xql?uri=$uri";
    $result = file_get_contents($contents);
    echo $result;
?>
<?php include("licenseSoftware.html"); ?>
<?php include("mitfordMainMenu.html"); ?>
</body>
</html>
