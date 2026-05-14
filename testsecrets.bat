@echo off
REM ==========================================
REM Test Batch File with Embedded Secrets
REM ==========================================

echo Starting application...

REM ---- Hardcoded credentials ----
set DB_USERNAME=admin_user
set DB_PASSWORD=SuperSecret123!


REM ---- API Keys ----
set API_KEY=AIzaSyA1234567890abcdef1234567890abcd
set STRIPE_KEY=sk_test_51H8abcXYZ1234567890abcdef

REM ---- AWS Credentials ----
set AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
set AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

REM ---- Bearer Token ----
set ACCESS_TOKEN=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.fake.jwt.token

REM ---- Private Key (simulated) ----
set PRIVATE_KEY=-----BEGIN PRIVATE KEY-----
set PRIVATE_KEY_LINE2=MIIEvQIBADANBgkqhkiG9w0BAQEFAASC...
set PRIVATE_KEY_LINE3=-----END PRIVATE KEY-----

REM ---- Database Connection String ----
set DB_CONN=Server=myserver;Database=mydb;User Id=admin;Password=Password@123;

REM ---- Generic Secrets ----
set SECRET_KEY=my_ultra_secret_value
set AUTH_TOKEN=abc123xyz987token
set PWD=Passw0rd!

echo Application started successfully.
pause
