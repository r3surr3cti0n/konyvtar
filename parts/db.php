<?php

class DBH
{
    // 
    private $db = "konyvtar";
    private $user = "mariadb_user";
    private $pwd = "VBJC5YukDsh@rB";

    // Protected, because we'll need to use this method elsewhere
    // and we want to do it secretly not publicly.
    protected function connect()
    {
        $dsn = "mysql:host=localhost;dbname={$this->db}";

        try {
            // dbh = Database Handler
            $dbh = new PDO($dsn, $this->user, $this->pwd);
            $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $dbh;
        } catch (PDOException $e) {
            $_SESSION["error"] = "Nem sikerült csatlakozni az adatbázishoz!";
            header("location: /login/");
            exit();
        }
    }
}
