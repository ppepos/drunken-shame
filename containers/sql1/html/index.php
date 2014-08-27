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
       $sql = "SELECT * FROM sql1 WHERE username='" . $_POST['username'] . "' and password='" . $_POST['password'] . "'";
        echo $sql . '<br/>';
        if ($result = mysql_query($sql) === FALSE){
            echo 'Query Failed';
        }
        echo "<table>\n";
        echo $line = mysql_num_rows($result);
        echo "</table>\n";
    } else { ?>

        <form action="" method="POST">
            <label for="username">Username:</label>
            <input type="text" name="username" value="username"/>
            <label for="password">Password:</label>
            <input type="password" name="password" value="password"/>
            <input type="submit" name="submit" value="login"/>
        </form>

    <?php }; ?>
</body>
</html>
