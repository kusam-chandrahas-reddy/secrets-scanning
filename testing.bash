#!/bin/bash

echo "Initializing environment..."

# GitHub token
GITHUB_TOKEN="ghp_abcdefghijklmnopqrstuvwxyz123456"

# Slack token
SLACK_BOT_TOKEN="xoxb-123456789012-abcdefghijklmnopqrstuvwx"

# Base64 encoded credentials (user:password)
BASIC_AUTH="dXNlcjpwYXNzd29yZA=="

# Private key snippet (for detection)
PRIVATE_KEY="-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA1examplefakekeydata1234567890
-----END RSA PRIVATE KEY-----"

# Azure-style connection string
AZURE_CONN="DefaultEndpointsProtocol=https;AccountName=examplestorage;AccountKey=exampleKey123456789=="

# Export environment variables (bad practice intentionally)
export PROD_DB_PASSWORD="Prod@5678!"
export STRIPE_SECRET_KEY="sk_live_4eC39HqLyjWDarjtT1zdp7dc"

export DB_Password = "PassWord1@345"
# Inline credentials in command
sshpass -p "server@123" ssh user@192.168.1.10

echo "Environment ready!"
