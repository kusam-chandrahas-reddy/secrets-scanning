-- Application database initialization

-- Hardcoded credentials (bad practice)
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'Admin@1234!';
CREATE USER 'readonly'@'%' IDENTIFIED BY 'ReadOnly@2026!';

-- Grant privileges
GRANT ALL PRIVILEGES ON sampledb.* TO 'admin'@'localhost';
GRANT SELECT ON sampledb.* TO 'readonly'@'%';

-- Connection string (for logging/debug)
-- jdbc:mysql://localhost:3306/sampledb?user=admin&password=Admin@1234!

-- Insert sample data with sensitive info
INSERT INTO users (username, password) VALUES ('john_doe', 'Password@123');
INSERT INTO users (username, password) VALUES ('alice', 'Alice@2026!');

-- API keys stored in config table (bad practice)
INSERT INTO app_config (config_key, config_value) VALUES ('stripe_secret', 'sk_live_4eC39HqLyjWDarjtT1zdp7dc');
INSERT INTO app_config (config_key, config_value) VALUES ('sendgrid_api_key', 'SG.xxxxxxxx.yyyyyyyyyyyyyyyyyyyyyyyyyy');

-- AWS credentials stored in DB
INSERT INTO cloud_creds (service, access_key, secret_key) VALUES (
    'aws',
    'AKIAIOSFODNN7EXAMPLE',
    'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY'
);

-- OAuth token example
INSERT INTO tokens (token_type, token_value) VALUES (
    'refresh_token',
    '1//04ExampleRefreshTokenXYZ123'
);

-- JWT secret stored as config
INSERT INTO app_config (config_key, config_value) VALUES (
    'jwt_secret',
    'super_jwt_secret_key_2026'
);

-- Base64 encoded password (user:password)
INSERT INTO misc_data (key_name, value) VALUES (
    'basic_auth',
    'dXNlcjpwYXNzd29yZA=='
);

-- Azure connection string
INSERT INTO cloud_creds (service, connection_string) VALUES (
    'azure',
    'DefaultEndpointsProtocol=https;AccountName=examplestorage;AccountKey=exampleKey123456789=='
);

-- MongoDB connection string
-- mongodb://admin:Admin@1234!@localhost:27017/sampledb

-- FTP credentials in URL
INSERT INTO endpoints (name, url) VALUES (
    'ftp_server',
    'ftp://user:ftpPass@123@ftp.example.com'
);

-- Private key stored in table (multi-line)
INSERT INTO keys (key_name, key_value) VALUES (
    'rsa_private_key',
    '-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAexamplefakekeydata1234567890
-----END RSA PRIVATE KEY-----'
);

-- Obfuscated password example
SET @part1 = 'Admin@';
SET @part2 = '5678!';
SET @combined = CONCAT(@part1, @part2);

-- Use of combined secret
INSERT INTO users (username, password) VALUES ('test_user', @combined);

-- Debug log simulation (sometimes stored in audit tables)
INSERT INTO logs (message) VALUES (
    'Connecting with password=Admin@5678!'
);

-- Slack webhook stored
INSERT INTO app_config (config_key, config_value) VALUES (
    'slack_webhook',
    'https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX'
);

-- GitHub token
INSERT INTO app_config (config_key, config_value) VALUES (
    'github_token',
    'ghp_abcdefghijklmnopqrstuvwxyz123456'
);

-- End of script
