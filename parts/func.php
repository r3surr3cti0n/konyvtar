<?php
require_once 'db.php';

class func extends DBH
{
    // Check if the statement was successful or not
    public function checkExe($stmt)
    {
        if (!$stmt->execute()) {
            header("location: ../login/index.php?stmtfailed");
            exit();
        }

        if ($stmt->rowCount() > 0) {
            return true;
        }
    }

    // Profile page
    public function changePwd($newPwd, $email)
    {
        $newPwd = password_hash($newPwd, PASSWORD_DEFAULT);
        $q = "UPDATE felhasznalo SET f_jelszo = :pwd WHERE f_email = :email";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":pwd", $newPwd);
        $stmt->bindParam(":email", $email);

        if ($this->checkExe($stmt)) {
            return true;
        }
    }

    public function comparePwds($pwd1, $pwd2)
    {
        if ($pwd1 == $pwd2) {
            return true;
        }
    }

    public function isNewPwd($pwd, $email)
    {
        $q = "SELECT f_jelszo FROM felhasznalo WHERE f_email = :email;";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":email", $email);

        if ($this->checkExe($stmt)) {
            $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $pwdHashed = $res[0]["f_jelszo"];   // The result's first row's password.

            if (!password_verify($pwd, $pwdHashed)) {
                return true;
            }
        }
    }
}
