<?php
require_once 'db.php';
require '../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\IReader;

class func extends DBH
{
    // Check if the statement was successful or not
    public function checkExe($stmt)
    {
        // Enable error messages
        $this->connect()->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        try {
            $stmt->execute();
        } catch (PDOException $e) {
            // $_SESSION['error'] = "{$e->getMessage()}";
            return false;
        }

        return true;
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

    // Upload page
    public function uploadFile($file)
    {
        if (
            $file["error"] == UPLOAD_ERR_OK
            && is_uploaded_file($file['tmp_name'])
        ) {
            // Check if the directory exists
            if (!is_dir("../fajlok/")) {
                // If the directory creation wasn't successful
                if (!mkdir("../fajlok", 0700)) {
                    $_SESSION["error"] = "Directory creation failed";
                    $this->index();
                }
            }
            move_uploaded_file($file["tmp_name"], "../fajlok/{$file["name"]}");
        } else {
            $_SESSION["error"] = "Hiba t??rt??nt a f??jl felt??lt??se sor??n.";
            $this->index();
        }
    }

    public function parseUploadedFile($file, $fileExt)
    {
        $file = "../fajlok/{$file["name"]}";

        try {
            // Create reader based on the file's extension.
            $reader = ($fileExt == "xlsx") ? \PhpOffice\PhpSpreadsheet\IOFactory::createReader("Xlsx") : \PhpOffice\PhpSpreadsheet\IOFactory::createReader("Xls");
            $reader->setReadDataOnly(true);
            $reader->setReadEmptyCells(false);  // Avoid reading blank cells
            $spreadsheet = $reader->load($file);
            $worksheet = $spreadsheet->getActiveSheet();

            $rows = [];
            foreach ($worksheet->getRowIterator() as $row) {
                $cellIterator = $row->getCellIterator();
                // Loop through cells that has value.
                $cellIterator->setIterateOnlyExistingCells(TRUE);

                $cells = [];
                foreach ($cellIterator as $cell) {
                    $cells[] = $cell->getValue();
                }
                $rows[] = $cells;
            }

            // Go through the $rows and create a query from them
            $q = "INSERT IGNORE INTO konyv(k_rakjel, k_cutszam, k_biblio) VALUES";

            $i = 0;
            $length = count($rows);
            foreach ($rows as $line) {
                $i++;

                // Skip the first row
                if ($i == 1) {
                    continue;
                }

                $rak_jel = $line[0];
                $cut_szam = $line[1];
                $biblio = $line[2];

                // If this is not the last row just separate it
                // otherwise close it down.
                if ($i != $length) {
                    $q .= "($rak_jel, '$cut_szam', '$biblio'),";
                } else {
                    $q .= "($rak_jel, '$cut_szam', '$biblio');";
                }
            }
        } catch (\PhpOffice\PhpSpreadsheet\Reader\Exception $e) {
            $_SESSION["error"] = "Hiba t??rt??nt a f??jl bet??lt??se k??zben!";
            $this->index();
        }

        $stmt = $this->connect()->prepare($q);
        if ($this->checkExe($stmt)) {
            $_SESSION["info"] = "{$stmt->rowCount()} db k??nyv ker??lt hozz??ad??sra!";
            // Delete the file after we done
            unlink("../fajlok/{$file}");
        } else {
            $_SESSION["error"] = "Hiba t??rt??nt a k??nyvek hozz??ad??sa sor??n!";
            $this->index();
        }
    }

    // Search page
    public function search($search)
    {
        $q = 'SELECT * FROM konyv WHERE k_biblio LIKE :search;';
        $stmt = $this->connect()->prepare($q);
        $search = "%" . $search . "%";
        $stmt->bindParam(":search", $search);

        if ($this->checkExe($stmt)) {
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } else {
            $_SESSION["error"] = "Hiba t??rt??nt a keres??s sor??n! K??rem pr??b??lja ??jra!";
            $this->index();
        }
    }

    // Email check
    public function changeEmail($email, $email1, $email2)
    {
        // Check if the two email is the same 
        if ($email1 != $email2) {
            $_SESSION["error"] = "A k??t email c??m nem egyezik!";
            $this->index();
        }
        // Check if the format of the email is correct
        if (!filter_var($email1, FILTER_VALIDATE_EMAIL) && !filter_var($email2, FILTER_VALIDATE_EMAIL)) {
            $_SESSION["error"] = "Az email c??m nem megfelel??!";
            $this->index();
        }
        // Check if the email is not the same as the current one
        if ($email == $email1) {
            $_SESSION["error"] = "A megadott email c??m megegyezik a jelenleg haszn??lt email c??m??vel! K??rem adjon meg egy ??j email c??met!";
            $this->index();
        }

        // If the email is valid try to update it
        $newEmail = $email1;
        $q = "UPDATE felhasznalo SET f_email = :newEmail WHERE f_email = :email";
        $stmt = $this->connect()->prepare($q);
        $stmt->bindParam(":newEmail", $newEmail);
        $stmt->bindParam(":email", $email);

        if ($this->checkExe($stmt)) {
            $_SESSION["info"] = "Sikeresen megv??ltoztatta az email c??m??t! K??rem jelentkezzen be ??jra!";
            header("location: ../login/");
            exit();
        }
    }

    // Other
    public function index()
    {
        header("location: index.php");
        exit();
    }
}
