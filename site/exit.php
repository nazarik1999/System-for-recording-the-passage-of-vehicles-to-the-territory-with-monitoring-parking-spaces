<?php
    session_start();
    unset ($_SESSION['fio']);
    session_destroy();  
    echo '<script>location.replace("index.php");</script>'; 
    exit;
?>