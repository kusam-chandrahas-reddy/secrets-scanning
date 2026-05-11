#!/bin/sh

echo "Starting deployment..."

# Hardcoded credentials
DB_USER="admin"
DB_PASSWORD="Admin@1234!"

DB_PASSWORD = "DATABASE_Password1@3"
# API key
API_KEY="AIzaSyA-ExampleGoogleAPIKey123456"

# AWS credentials
AWS_ACCESS_KEY_ID="AKIAIOSFODNN7EXAMPLE"
AWS_SECRET_ACCESS_KEY="wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"

# Connection string
DB_CONN="postgresql://admin:Admin@1234!@localhost:5432/sampledb"

# JWT token
JWT_TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.samplepayload.signature"

# Curl example with auth
curl -H "Authorization: Bearer sk_test_51ExampleSecretKey" https://api.example.com/data

echo "Deployment completed"
