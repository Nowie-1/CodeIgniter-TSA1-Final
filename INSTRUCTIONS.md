# How to install these files (Windows + XAMPP)

This zip is NOT the whole framework. It is the assignment code that goes on top of a fresh CodeIgniter 4 project.

## One-time prerequisites
1. XAMPP (PHP 8.1+ and MySQL). Add `C:\xampp\php` to your PATH.
2. In `C:\xampp\php\php.ini`, remove the leading `;` from: `extension=intl`, `extension=mysqli`, `extension=zip`, `extension=openssl`, `extension=mbstring`.
3. Composer (getcomposer.org) and Git (git-scm.com).
4. Check in a NEW terminal: `php -v`, `composer -V`, `git --version`.

## Steps
1. Create the framework project (skip if you already did):
   ```
   cd ~\Documents
   composer create-project codeigniter4/appstarter tasks-for-today
   ```
2. Unzip this package. Copy its contents (`app`, `public`, `database.sql`, `env.example`, `README.md`) into
   `C:\Users\<you>\Documents\tasks-for-today`, choosing **Replace** when asked.
3. Delete leftovers from older versions, if present:
   - `app\Views\welcome_message.php`
   - `app\Views\layout.php`, `welcome.php`, `tasks.php`, `profile.php`, `about.php`
   - `app\Config\Routes.snippet.php`
4. Create `.env`: copy `env.example` to `.env` (same folder as `composer.json`). If you already have a working `.env`, keep it.
5. Start MySQL in the XAMPP Control Panel, open http://localhost/phpmyadmin and create an empty database `tasks_for_today`.
6. Set the timezone in `app\Config\App.php`:
   ```php
   public string $appTimezone = 'Asia/Manila';
   ```
7. In the project folder, run:
   ```
   php spark migrate
   php spark db:seed DatabaseSeeder
   php spark serve
   ```
8. Open http://localhost:8080 and check `/` (Welcome), `/tasks` (Task List), `/profile`, `/about`.
9. Edit `app\Views\pages\about.php` and replace `[YOUR FULL NAME]` with your name.

## Troubleshooting
- **404 on /tasks** – `app\Config\Routes.php` was not replaced.
- **Table doesn't exist** – run `php spark migrate`.
- **Connection refused / access denied** – MySQL is not started, or `.env` database settings are wrong.
- **Page has no styling** – hard refresh (Ctrl+F5) and make sure `public\assets\css\app.css` exists.
- **Seeder says tables are missing** – migrate first, then seed.

## Submission checklist
- Push the project to GitHub (include `database.sql`, migrations and seeders; `.env` is ignored by default, which is correct).
- Host it and paste the live link into `README.md`.
