----------------------------------------------------------------------------------------
-- Script: test_db_connection.sql
-- 
-- Check that database connection is working
--
----------------------------------------------------------------------------------------
WHENEVER SQLERROR EXIT FAILURE ROLLBACK;

----------------------------------------------------------------------------------------
-- Show connection details
----------------------------------------------------------------------------------------
SELECT SYS_CONTEXT('USERENV', 'IP_ADDRESS')      ip_address,
       SYS_CONTEXT('USERENV','SERVER_HOST')      server_host,
       SYS_CONTEXT('USERENV', 'HOST')            host,
       SYS_CONTEXT('USERENV', 'SESSION_USER')    session_user,
       SYS_CONTEXT('USERENV', 'OS_USER')         os_user,
       SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA')  current_schema
FROM   dual;

----------------------------------------------------------------------------------------
-- Be happy
----------------------------------------------------------------------------------------
SELECT 'Success!!!' the_message
FROM   dual;

----------------------------------------------------------------------------------------
-- The End
----------------------------------------------------------------------------------------