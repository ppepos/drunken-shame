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
        $result = mysql_query($sql) or die("MySQL Error");
        if ($result === FALSE){
            echo 'Query Failed';
        }
        $line = mysql_num_rows($result);
        if (intval($line) >= 1){
            echo "FLAG-SQLInjectionIsSuchAComplexTask";
        } else {
            echo "Wrong Username / Password combination!";
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
