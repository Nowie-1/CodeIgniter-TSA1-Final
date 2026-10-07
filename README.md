# Tasks for Today Management System

IT0049 – Technical Summative Assessment 1. Built with CodeIgniter 4, PHP 8 and MySQL.

## Pages
| Route | Description |
|---|---|
| `/` | Welcome page – only tasks where `task_date` equals today |
| `/tasks` | Task List – every task, ordered by date |
| `/profile` | The single demo user |
| `/about` | Static page about the developer |

## Requirements
- PHP 8.1+ with extensions `intl`, `mbstring`, `mysqli`, `zip`, `openssl` enabled
- Composer
- MySQL / MariaDB (XAMPP works)

## Setup (fresh clone / first run)
1. Install dependencies: `composer install`
2. Copy `env.example` to `.env` and adjust the database settings if needed.
3. Create an empty MySQL database named `tasks_for_today`.
4. Create the tables and sample data:
   ```
   php spark migrate
   php spark db:seed DatabaseSeeder
   ```
   (Alternative: import `database.sql` in phpMyAdmin.)
5. Start the app: `php spark serve` → http://localhost:8080

## Project structure
- `app/Controllers` – Home, Tasks, Profile, About
- `app/Models` – TaskModel, UserModel
- `app/Views` – `layouts/`, `partials/`, `dashboard/`, `tasks/`, `profile/`, `pages/`
- `app/Helpers/task_helper.php` – view helpers
- `app/Database/Migrations`, `app/Database/Seeds` – schema and sample data
- `public/assets/css/app.css` – stylesheet

## Live demo
<paste hosted link here>
