CREATE TABLE tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'pending',
  task_date DATE NOT NULL,
  created_at DATETIME NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);

INSERT INTO tasks (title, status, task_date, created_at) VALUES
('Submit weekly progress report',  'completed',   CURDATE() - INTERVAL 1 DAY, NOW()),
('Review pull requests',           'completed',   CURDATE() - INTERVAL 1 DAY, NOW()),
('Team stand-up meeting',          'completed',   CURDATE(), NOW()),
('Fix login page bug',             'in_progress', CURDATE(), NOW()),
('Update project documentation',   'pending',     CURDATE(), NOW()),
('Email client about deployment',  'pending',     CURDATE(), NOW()),
('Prepare sprint demo slides',     'pending',     CURDATE() + INTERVAL 1 DAY, NOW()),
('Database backup check',          'pending',     CURDATE() + INTERVAL 1 DAY, NOW()),
('Deploy version 1.2 to production','pending',    CURDATE() + INTERVAL 2 DAY, NOW());

INSERT INTO users (username, full_name, email, created_at) VALUES
('jdelacruz', 'Juan Dela Cruz', 'juan.delacruz@example.com', NOW());
