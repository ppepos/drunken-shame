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
        if (!mysql_select_db('mysql', $link)){
            echo 'Could not find database';
        }

        $sql = 'SELECT count(*) as count FROM sql1 WHERE username = "' . $_POST['username'] . '" and password = "' . $_POST['password'] . '"';
        $sql = 'SELECT 1 from sql1';
        echo $sql . '<br/>';
        $result = mysql_query($sql, $link);
        echo $result . '<br/>';
        $row = mysql_fetch_object($result);
        echo $row . '<br/>';;
        if ($row == '1'){
            echo "FLAGBITCH";
        } else {
            echo "Wrong Username/Password combination";
        }
        echo $row->total_count;
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
