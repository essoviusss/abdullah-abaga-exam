<?php
    $connection = new mysqli("localhost", "root", "", "youtube_db");
    if(mysqli_connect_error()){
        echo mysqli_connect_error();
        exit();
    }
?>