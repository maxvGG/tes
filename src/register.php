<?php 

/**
 * Standaard functie definitie
 * @param string Dit noem je een parameter (die staat tussen haakjes)
 * @return array Dit is de waarde die je functie doorgeef
 */
function setFormData(){
    global $con; // dit is je database connectie
    if(isset($_POST['field_firstname']) && $_POST['field_firstname'] != ''){
        $username = dbp($_POST['field_firstname']);
    }else{
        echo "Voornaam is verplicht";
    }
    if(isset($_POST['field_password']) && $_POST['field_password'] != ''){
        $password = dbp($_POST['field_password']);
        $pwd_hashed = password_hash ($password , PASSWORD_DEFAULT);
    }else{
        echo "Password is verplicht";
    }
    // pwd_hashed in bind_param zetten nog niet gelukt 
    $query1 = $con->prepare("INSERT INTO admin(username,password) VALUES (?,?);");
    
    if ($query1 === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
    }
    // hashed password zit er nog niet in 
    $query1->bind_param('ss', $username,$pwd_hashed);
    if ($query1->execute() === false) {
        echo mysqli_error($con)." - ";
        exit(__LINE__);
    } else {
        echo "Gebruiker toegevoegd";
        header('location: login.php');
        $query1->close();
    }
    
}

?>