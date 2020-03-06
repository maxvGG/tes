<?php
    function setFormData() {
        global $con;
        if (isset($_POST['field_password']) && $_POST['field_password' != '']){
            $password_form = dbp($_POST['field_password']);
        }
        if (isset($_POST['field_username']) && $_POST['field_username' != '']){
            $username_form = dbp($_POST['field_username']);
        }
        $hash_database = $con->prepare("SELECT password from admin where username = ?");
        
        if ($hash_database === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
        }
        $hash_database->bind_param('s', $username_form);
        if ($hash_database->execute() === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
        } else {
        echo dd($username_form);
        echo dd($hash_database);
        // header('location: login.php');
        $hash_database->close();
        }

        if (password_verify($password_form, $hash_database)) {     
        echo "het werkt";    
	    // Success! if given password and hash match other wise it will return false. 
        } else {
            echo "het werkt niet";     
        	// Invalid credentials 
        }
    }
?>