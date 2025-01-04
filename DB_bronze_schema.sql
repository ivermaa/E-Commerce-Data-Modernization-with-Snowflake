create database if not exists pacificretail_db;
create schema if not exists bronze

--create external stage

use pacificretail_db.bronze
CREATE OR REPLACE STAGE adls_stage
    STORAGE_INTEGRATION = azure_pacificretail_int
    URL = 'azure://pacificretailstgg.blob.core.windows.net/landing'

--checking stage, details 
ls @adls_stage
