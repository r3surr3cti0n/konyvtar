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
                    header("location: index.php");
                    exit();
                }
            }
            move_uploaded_file($file["tmp_name"], "../fajlok/{$file["name"]}");
        } else {
            $_SESSION["error"] = "Hiba történt a fájl feltöltése során.";
            header("location: index.php");
            exit();
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
            $_SESSION["error"] = "Hiba történt a fájl betöltése közben!";
            header("location: index.php");
            exit();
        }

        $stmt = $this->connect()->prepare($q);
        if ($this->checkExe($stmt)) {
            $_SESSION["info"] = "{$stmt->rowCount()} db könyv került hozzáadásra!";
            // Delete the file after we done
            unlink("../fajlok/{$file}");
        } else {
            $_SESSION["error"] = "Hiba történt a könyvek hozzáadása során!";
            header("location: index.php");
            exit();
        }
    }
}
