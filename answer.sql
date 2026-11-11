
-- ============================================================
-- MYSQL DATABASE BACKUP AND RECOVERY ASSIGNMENT
-- Student: Abdikheir Hussein
-- ============================================================


-- ============================================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
-- ============================================================

-- Task:
-- Create a complete backup of the sales database before
-- performing major database changes.

-- Command to run in Windows Command Prompt:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation of the command:
-- mysqldump is a MySQL utility used to create database backups.
-- -u root specifies root as the MySQL username.
-- -p prompts the user to enter the database password.
-- sales specifies the database to be backed up.
-- > redirects the backup output into a file.
-- sales_backup.sql is the name of the backup file.

-- This command creates a logical backup containing the
-- database table structures and the data stored in the tables.
-- It also includes other supported database objects such as
-- triggers, where the necessary privileges are available.

-- Importance of regular database backups:

-- 1. Data Protection:
-- Regular backups protect important business information
-- against accidental deletion, corruption, and hardware failure.

-- 2. Disaster Recovery:
-- Backups help database administrators restore information
-- after unexpected events such as system crashes or disasters.

-- 3. Business Continuity:
-- Backups reduce downtime and help organizations continue
-- their operations after unexpected data loss.

-- 4. Recovery Before Major Changes:
-- A backup provides a recovery point before database updates,
-- modifications, or maintenance activities.

-- 5. Prevention of Permanent Data Loss:
-- Backups allow lost information to be recovered instead
-- of having to recreate it manually.


-- ============================================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- ============================================================

-- Task:
-- Create a backup of every database available on the
-- MySQL server before migrating to another server.

-- Command to run in Windows Command Prompt:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation of the command:
-- mysqldump is the MySQL database backup utility.
-- -u root specifies root as the MySQL username.
-- -p prompts the user to enter the database password.
-- --all-databases exports all databases on the server.
-- > redirects the backup output into a file.
-- all_databases_backup.sql is the backup filename.

-- This command creates a logical backup of all databases
-- supported by mysqldump on the MySQL server.

-- Importance of backing up all databases before migration:

-- 1. Complete Data Transfer:
-- It ensures that important databases are included when
-- transferring information to another server.

-- 2. Preventing Data Loss:
-- It reduces the risk of leaving important databases behind
-- during the migration process.

-- 3. Easy Restoration:
-- The backup file can be used to restore databases on
-- the destination MySQL server.

-- 4. Business Continuity:
-- Backups help organizations maintain their operations
-- during server migration.

-- 5. Database Structure Preservation:
-- It preserves database structures, tables, and stored data.

-- 6. Disaster Recovery:
-- If the migration fails, administrators can use the backup
-- to restore information to another MySQL server.

-- Additional migration considerations:
-- User accounts, permissions, server configurations,
-- stored routines, and scheduled events may require
-- separate migration checks or backup options.


-- ============================================================
-- QUESTION 3: CREATING A DATA-ONLY DATABASE BACKUP
-- ============================================================

-- Task:
-- Create a backup containing only the data from the sales
-- database without including CREATE TABLE statements.

-- Command to run in Windows Command Prompt:
-- mysqldump -u root -p --no-create-info sales > sales_data_only.sql

-- Explanation of the command:
-- mysqldump is the MySQL database backup utility.
-- -u root specifies root as the MySQL username.
-- -p prompts the user to enter the database password.
-- --no-create-info prevents CREATE TABLE statements
-- from being included in the backup.
-- sales specifies the database to be backed up.
-- > redirects the backup output into a file.
-- sales_data_only.sql is the output backup filename.

-- This command exports the records stored in the sales
-- database without exporting the table creation statements.
-- The resulting file contains SQL statements for inserting
-- the exported data into existing compatible tables.

-- Importance of data-only backups:

-- 1. Data Migration:
-- They make it easier to transfer records into another
-- database that already has the required table structures.

-- 2. Saves Time:
-- They avoid exporting table creation statements when
-- the destination tables already exist.

-- 3. Easier Data Restoration:
-- They allow administrators to restore records without
-- recreating the database table structures.

-- 4. Database Maintenance:
-- They are useful when transferring or updating records
-- while keeping existing table definitions.

-- 5. Flexible Database Management:
-- They allow data to be imported into compatible tables
-- without replacing their existing definitions.

-- Important Note:
-- The destination database must already contain compatible
-- tables before importing a data-only backup.


-- ============================================================
-- GENERAL IMPORTANCE OF DATABASE BACKUP AND RECOVERY
-- ============================================================

-- Database backup and recovery are essential responsibilities
-- of a database administrator.

-- Regular backups protect information against accidental
-- deletion, hardware failures, software errors, and disasters.

-- Backups also support database migration by allowing data
-- and database structures to be transferred and restored
-- on another MySQL server.

-- A good database backup strategy should include:
-- 1. Creating backups regularly.
-- 2. Keeping backup copies in a secure location.
-- 3. Maintaining additional copies of important backups.
-- 4. Testing backups through restoration procedures.
-- 5. Protecting backup files against unauthorized access.
-- 6. Verifying backup files after every backup operation.


-- ============================================================
-- END OF MYSQL DATABASE BACKUP AND RECOVERY ASSIGNMENT
-- ============================================================
