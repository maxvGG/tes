<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'relatie';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die('De verbinding kan niet worden gemaakt: '.$conn->connect_error);
} 
?>