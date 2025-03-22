CREATE LOGIN db_user WITH PASSWORD = 'StrongPassword123';
CREATE USER db_user FOR LOGIN db_user;
GRANT INSERT, DELETE ON Employees TO db_user;
GRANT UPDATE, DELETE ON Products TO db_user;
GRANT UPDATE, INSERT ON Orders TO db_user;

EXECUTE AS USER = 'db_user';
INSERT INTO Employees VALUES (1, 'John Doe', '1985-05-10', 5000.00, 1);
REVERT;

EXECUTE AS USER = 'db_user';
INSERT INTO Orders VALUES (1, '2025-02-28', 1, 100.00, 1); 

REVOKE INSERT, DELETE ON Employees FROM db_user;
REVOKE UPDATE, DELETE ON Products FROM db_user;
REVOKE UPDATE, INSERT ON Orders FROM db_user;
DROP USER db_user;
DROP LOGIN db_user;

BACKUP DATABASE MyDatabase TO DISK = 'C:\Backup\MyDatabase.bak' WITH FORMAT;
RESTORE DATABASE MyDatabase FROM DISK = 'C:\Backup\MyDatabase.bak' WITH REPLACE;

USE msdb;
EXEC sp_add_job @job_name = 'DailyBackup';
EXEC sp_add_jobstep @job_name = 'DailyBackup', 
    @step_name = 'Backup Step', 
    @command = 'BACKUP DATABASE MyDatabase TO DISK = "C:\Backup\DailyBackup.bak" WITH FORMAT';
EXEC sp_add_schedule @schedule_name = 'DailySchedule', 
    @freq_type = 4, 
    @freq_interval = 1, 
    @active_start_time = 100000;
EXEC sp_attach_schedule @job_name = 'DailyBackup', @schedule_name = 'DailySchedule';
EXEC sp_add_jobserver @job_name = 'DailyBackup';

EXEC sp_add_job @job_name = 'MonthlyBackup';
EXEC sp_add_jobstep @job_name = 'MonthlyBackup', 
    @step_name = 'Backup Step', 
    @command = 'BACKUP DATABASE MyDatabase TO DISK = "C:\Backup\MonthlyBackup.bak" WITH FORMAT';
EXEC sp_add_schedule @schedule_name = 'MonthlySchedule', 
    @freq_type = 16, 
    @freq_interval = 15, 
    @active_start_time = 000000;
EXEC sp_attach_schedule @job_name = 'MonthlyBackup', @schedule_name = 'MonthlySchedule';
EXEC sp_add_jobserver @job_name = 'MonthlyBackup';
