# Database

Database name: **`edacademix`** (MariaDB 10.4 / MySQL, `utf8mb4`) - **29 tables**.

| File | Purpose |
|---|---|
| `edacademix.sql` | Complete table structure + catalogue and IELTS test content |

## What is included

| Content | Rows |
|---|---|
| Countries / universities | 5 / 20 |
| Subjects / program-field links | 184 / 360 |
| Tuition + scholarship rows / admission requirements | 156 / 156 |
| Reading and Listening questions | 240 (120 each) |
| Reading passages / writing tasks / listening audio entries | 9 / 6 / 3 |
| Video lesson entries | 41 |

**Not included (privacy):** user accounts, administrators, certificate requests, offer-letter requests,
contact messages, test results and answers. Those tables exist but are **empty**.

> Five tables are part of the schema but not used by the current code: `listeningresponses`, `speakingprompts`,
> `speakingrecords`, `bandscorecriteria`, `userprogress`.

## Import (XAMPP + phpMyAdmin)

1. Start **Apache** and **MySQL** in XAMPP and open <http://localhost/phpmyadmin>.
2. Click **New**, create a database named `edacademix` (collation `utf8mb4_general_ci`).
3. Select it, open the **Import** tab, choose `edacademix.sql` and click **Import**.

## First administrator

The `admin` table starts empty. Open <http://localhost/EdAcademix/admin_signup.php>, create your administrator,
then log in at `Admin/admin_login.php`. **Delete or protect `admin_signup.php` afterwards** - it is open to anyone.
