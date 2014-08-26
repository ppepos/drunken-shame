<?php $link = mysql_connect('localhost', 'root'); ?>
<html>
<head>
<title>SQL 1</title>
</head>
<body>
    <?php if(!$link) {
        echo "<h2>Can't connect to local MySQL Server!</h2>";
    }

    if (!empty($_POST)) {
        if (!mysql_select_db('db', $link)){
            echo 'Could not find database';
        }

        $sql = 'SELECT count(*) FROM login WHERE username = ' . $_POST['username'] . ' and password = ' . $_POST['password'] . ';';
        $result = mysql_query($sql, $link);
        echo $result;
    } else { ?>

        <form action="" method="POST">
            <label for="username">Username:</label>
            <input type="text" name="username" value="username"/>
            <label for="password">Password:</label>
            <input type="password" name="password" value="password"/>
            <input type="submit" name="submit" value="login"/>
        </form>

    <?php } ?>
</body>
</html>
