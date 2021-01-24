<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="form">
        <p>Hey, <?php echo $_SESSION['username']; ?>!</p>
        <p>You are in Home page.</p>
        <p><a href="logout.php">Logout</a></p>
        <a href = "#"> <button class ="surveyscreen">Check it out Survey Details Screen </button></a>

    </div>
    </div>
    <div class="surveyform" align="right">
      <a href = "surveyform.php"><img src ="plus--v3.png" alt="plusicon"> </a>
    </div>
    



</body>
</html>
