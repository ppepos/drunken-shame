<?php $link = mysql_connect('localhost', 'root', ""); ?>
<html>
<head>
<title>SQL 4</title>
</head>
<body>
<?php 
    if(!$link) {
        echo "<h2>Can't connect to local MySQL Server!</h2>";
    }
    mysql_select_db('mysql') or die('Failed switching databases');

    $ua = $_SERVER['HTTP_USER_AGENT'];
    $sql = "SELECT * FROM habitrpg_scores where ua='" . $ua . "'";
    echo $sql . "\n";
    $result = mysql_query($sql) or die("MySQL Error");
    $line = mysql_fetch_array($result);
    echo "<h3>Our first user ever with exactly your browser was:</h3><br/>";
    if(!$line){
        echo "No one! You're the first!";
    } else {
        echo "\n";
        echo $line["id"] . "<br/>";
        echo $line["username"] . "<br/>";
        echo $line["score"] . "<br/>";
        echo "\n";
    }

?>
</body>
</html>
