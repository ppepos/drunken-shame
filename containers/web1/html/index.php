<html>
<head>
<title>Web 1</title>
</head>
<body>
<?php 
    
if(isset($_GET['page'])){
    include('news/' . $_GET['page']);
}

?>
<br />
<br />
<br />
<a href="?page=news1.php">UTF-8 Glory</a><br />
<a href="?page=news2.php">Martine Also Glorious</a><br />
<a href="?page=news3.php">Beef</a><br />
    
</body>
</html>
