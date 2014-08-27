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

    if (!empty($_POST)) {
        $username = mysql_real_escape_string($_POST['username']);
        $password = mysql_real_escape_string($_POST['password']);
        $ua = $_SERVER['HTTP_USER_AGENT'];
        $sql = "SELECT * FROM sql3 WHERE username='" . $username . "' and password='" . $password . "' and ua='" . $ua . "'";
        $result = mysql_query($sql);
        if (!$result){
            echo "<h3><font color=\"red\">";
            echo mysql_errno($link) . ": " . mysql_error($link) . "\n";
            echo "</h3></font>";
        }
        $line = mysql_num_rows($result);
        if (intval($line) >= 1){
            echo "FLAG-ButButButUserAgentIsntUserInput";
        } else {
            echo "Wrong Username / Password / IP Address / User-Agent combination!";
        }
    } else { ?>

        <h2>Welcome to the admin login page</h2>
        <form action="" method="POST">
            <label for="username">Username:</label>
            <input type="text" name="username" value="username"/><br/>
            <label for="password">Password:</label>
            <input type="password" name="password" value="password"/><br/>
            <input type="submit" name="submit" value="login"/>
        </form>

    <?php }; ?>
</body>
</html>
