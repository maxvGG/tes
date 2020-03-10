<?php
    function setformdata(){
        global $con;
        if(isset($_POST['field_username']) && $_POST['field_username'] != ''){
            $username = dbp($_POST['field_username']);
        }else{
            echo "Voornaam is verplicht";
        }
        if(isset($_POST['field_password']) && $_POST['field_password'] != ''){
            $password = dbp($_POST['field_password']);
            // // 
            $sql = "SELECT password FROM admin WHERE username = '$username'";
            $result = mysqli_query($con, $sql);
            /* Find rows in table*/
            $check = mysqli_num_rows($result);
            if($check > 0){
                $hpwd = $data['password'];
                    if(password_verify($password,$hpwd)){
                    header('Location: ../index.html');
                // while($data= mysqli_fetch_assoc($result)){
                    
                // }
                }
                
                
            // while($data = mysqli_fetch_assoc($result)){
                
            // }
            }
        }else{
            echo "Password is verplicht";
        }
        

    }
?>