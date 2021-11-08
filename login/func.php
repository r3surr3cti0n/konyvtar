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
        $q = "SELECT f_az FROM felhasznalo WHERE f_email = :email;";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":email", $email);

        return $this->checkExe($stmt);
    }

    protected function checkPwd($email, $pwd)
    {
        $q = "SELECT f_jelszo FROM felhasznalo WHERE f_email = :email;";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":email", $email);

        if ($this->checkExe($stmt)) {
            $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $pwdHashed = $res[0]["f_jelszo"];   // The result's first row's password.
            
            if (password_verify($pwd, $pwdHashed)) {
                return true;
            }
        }
    }
}
