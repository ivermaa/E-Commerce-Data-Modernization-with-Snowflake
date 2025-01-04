-- connection between azure and snowflake

CREATE OR REPLACE STORAGE INTEGRATION azure_pacificretail_int
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = AZURE
ENABLED = TRUE
AZURE_TENANT_ID = '8986416b-fc91-4caa-a1e8-01b1842cfddb'
STORAGE_ALLOWED_LOCATIONS = ('azure://pacificretailstgg.blob.core.windows.net/landing/');

-- describing storage integration
DESC STORAGE INTEGRATION azure_pacificretail_int;

--click on consent url, basically for authentication that we are alloiwing snowflake to connect to azure
--multi talent app name copy keep it with you
-- qyd6l7snowflakepacint_1735906461185
-- conection done, go to storage account and give read and write permissions to the above app name

--create external stage
--will be done after creation of db and bronze schema