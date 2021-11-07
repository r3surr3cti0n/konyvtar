<?php

require_once '../parts/func.php';
require_once '../parts/db.php';

class login extends func
{
    // private $email;

    public function loginUser($email, $pwd)
    {
        //     $this->email = $email;
        //     $this->pwd = $pwd;

        if (!$this->emailExists($email) || !$this->checkPwd($email, $pwd)) {
            $_SESSION["error"] = "true";
            header("location: /login/");
            exit();
        }

        $_SESSION["email"] = $email;
    }

    protected function emailExists($email)
    {
        $q = "SELECT az FROM felhasznalo WHERE email = :email;";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":email", $email);

        return $this->checkExe($stmt);
    }

    protected function checkPwd($email, $pwd)
    {
        $q = "SELECT jelszo FROM felhasznalo WHERE email = :email;";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":email", $email);

        if ($this->checkExe($stmt)) {
            $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $pwdHashed = $res[0]["jelszo"];   // The result's first row's password.
            
            if (password_verify($pwd, $pwdHashed)) {
                return true;
            }
        }
    }
}
