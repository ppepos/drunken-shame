<html>
<head>
<title>Web 1</title>
</head>
<body>
<?php 
$in = 'Here is a sample string to be modified.';
if(isset($_GET['replace']) && isset($_GET['with'])){

    echo 'String replaced <br />';
    echo preg_replace($_GET['replace'], $_GET['with'], $in);

} else {

    echo $in;

}
?>

<br />
<br />
<br />


<form method="get" action="#">
    <label> Replace string: </label>
    <input type="text" name="replace"></input><br />
    <label> With: 
    <input type="text" name="with"></input><br />
    <input type="submit">
</form>

<p>Pro-tip: preg_replace is used in the backend.

</body>
</html>
