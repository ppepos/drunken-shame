<?php $link = mysql_connect('localhost', 'root', ""); ?>
<html>
<head>
<title>SQL 1</title>
</head>
<body>
<?php 
    if(!$link) {
        echo "<h2>Can't connect to local MySQL Server!</h2>";
    }
    mysql_select_db('mysql') or die('Failed switching databases');

    if (isset($_GET["user"])) {
        $sql = "SELECT * FROM habitrpg_scores where username='" . $_GET["user"] . "'";
        $result = mysql_query($sql);
        if (!$result){
            echo "<h3><font color=\"red\">";
            echo mysql_errno($link) . ": " . mysql_error($link) . "\n";
            echo "</h3></font>";
        }
        echo "<table border=\"2\">\n";
        while($line = mysql_fetch_array($result)){
            echo "<tr>\n";
            echo "<td>" . $line["id"] . "</td>\n";
            echo "<td>" . $line["username"] . "</td>\n";
            echo "<td>" . $line["score"] . "</td>\n";
            echo "</tr>\n";
        }
        echo "</table>\n";

    } else { 

        $sql = "SELECT * FROM habitrpg_scores";
        $result = mysql_query($sql) or die("MySQL Error");
        if ($result === FALSE){
            echo 'Query Failed';
        }
        echo "<table border=\"2\">\n";
        while($line = mysql_fetch_array($result)){
            echo "<tr>\n";
            echo "<td>" . $line["id"] . "</td>\n";
            echo "<td><a href=\"?user=" . $line["username"] . "\">" . $line["username"] . "</a></td>\n";
            echo "<td>" . $line["score"] . "</td>\n";
            echo "</tr>\n";
        }
        echo "</table>\n";
    };
?>
</body>
</html>
