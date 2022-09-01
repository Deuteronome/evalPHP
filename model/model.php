<?php

    function connectDB() {
        try
        {
            $bdd = new PDO('mysql:host=localhost;dbname=forum;charset=utf8', 'root', 'root');
        }
        catch(Exception $e)
        {
            die('Erreur : '.$e->getMessage());
        }

        return $bdd;
    }

    function getMessages($bdd) {
        $logStatement = $bdd-> prepare('SELECT * FROM messages_vw');
        $logStatement -> execute();
        $req = $logStatement -> fetchAll();
        $logStatement -> closeCursor();

        return $req;
    }

?>