<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Survey Form</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php
    require('db.php');
    // When form submitted, insert values into the database.
    if (isset($_REQUEST['name'])) {
        // removes backslashes
        $name = stripslashes($_REQUEST['name']);
        $name = mysqli_real_escape_string($con, $name);
        $email    = stripslashes($_REQUEST['email']);
        $email    = mysqli_real_escape_string($con, $email);
        $address = stripslashes($_REQUEST['address']);
        $address = mysqli_real_escape_string($con, $address);
        $age = stripslashes($_REQUEST['age']);
        $age = mysqli_real_escape_string($con, $age);
        $occupation = stripslashes($_REQUEST['occupation']);
        $occupation = mysqli_real_escape_string($con, $occupation);
        $education = stripslashes($_REQUEST['education']);
        $education = mysqli_real_escape_string($con, $education);
        $phonenumber = stripslashes($_REQUEST['phonenumber']);
        $phonenumber = mysqli_real_escape_string($con, $phonenumber);
        $date = stripslashes($_REQUEST['date']);
        $date = mysqli_real_escape_string($con, $date);
        $place = stripslashes($_REQUEST['place']);
        $place = mysqli_real_escape_string($con, $place);
        $yourself = stripslashes($_REQUEST['yourself']);
        $yourself = mysqli_real_escape_string($con, $yourself);
        
        $query    = "INSERT into `survey` (name,address,age,occupation,education,phonenumber,email,date,place,yourself)
                     VALUES ('$name','$address','$age','$occupation','$education','$phonenumber','$email','$date','$place','$yourself')";
        $result   = mysqli_query($con, $query);
        if ($result) {
            echo "<div class='form'>
                  <h3>You are registered successfully.</h3><br/>
                  </div>";
        } else {
            echo "<div class='form'>
                  <h3>Required fields are missing.</h3><br/>
                  </div>";
        }
    } else {
?>
    <form class="form" action="" method="post" align="center">
        <h1 class="login-title">Survey Form</h1>
        <input type="text" class="login-input" name="name" placeholder="Name" required /><br>
        <input type="text" class="login-input" name="address" placeholder="Address" required /><br>
        <input type="text" class="login-input" name="age" placeholder="Age" required /><br>
        <input type="text" class="login-input" name="occupation" placeholder="Occupation" required /><br>
        <input type="text" class="login-input" name="education" placeholder="Education" required /><br>
        <input type="text" class="login-input" name="phonenumber" placeholder="Phonenumber" required /><br>
        <input type="text" class="login-input" name="email" placeholder="Email Adress" required><br>
        <input type="text" class="login-input" name="date" placeholder="Date" required /><br>
        <input type="text" class="login-input" name="place" placeholder="Place" required /><br>
        <input type="text" class="login-input" name="yourself" placeholder="Tell us about yourself" required /><br>
        <input type="submit" name="submit" value="Submit" class="login-button">
        
    </form>
<?php
    }
?>
</body>
</html>