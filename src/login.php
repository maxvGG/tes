<?php
    function setFormData() {
        global $con;
        if(isset($_POST['field_username']) && $_POST['field_username'] != ''){
            $username = dbp($_POST['field_username']);
        }else{
            echo "username is verplicht";
        }
        if(isset($_POST['field_password']) && $_POST['field_password'] != ''){
            $password = dbp($_POST['field_password']);
            $hash_database = password_hash ($password , PASSWORD_DEFAULT);
        }else{
            echo "Password is verplicht";
        }

        $query1 = $con->prepare("SELECT * FROM admin where username  = (?) AND password = (?);");
        if ($query1 === false) {
            echo mysqli_error($con)." - ";
            exit(__LINE__);
        }
        
        $query1->bind_param('ss', $username,$pwd_hashed);
        if ($query1->execute() === false) {
            echo mysqli_error($con)." - ";
            exit(__LINE__);
        } else {
            echo "het is gelukt 2 ";
            // header('location: login.php');
            $query1->close();
        }
        if (password_verify($password, $hash_database)) {     
            echo "het is gelukt";
            header('Location: ../index.php');
        } else {     
            echo "password or username is incorrect"
        }
    }

    
?>