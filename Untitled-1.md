# Salesforce Metadata – Secret Scanning Test File

⚠️ **WARNING**
This file contains **intentionally fake secrets** for the purpose of testing
GitGuardian secret detection.  
**Do NOT use real credentials.**

---

## 📄 Metadata Type: Named Credential / Custom Metadata (Test)

The XML below simulates Salesforce metadata that often (incorrectly) contains
hardcoded secrets such as OAuth client secrets, API tokens, and cloud credentials.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<NamedCredential xmlns="http://soap.sforce.com/2006/04/metadata">
    <fullName>GG_Test_Named_Credential</fullName>
    <label>GitGuardian Test Credential</label>
    <endpoint>https://api.partner-example.com/v2</endpoint>
    <principalType>NamedUser</principalType>
    <authenticationProtocol>OAuth 2.0</authenticationProtocol>

    <!-- ❌ FAKE OAuth Client ID -->
    <oauthClientId>3MVG9FAKECLIENTID123456789</oauthClientId>
    <username>Testeract@test.com</username>
        <password>AllTheBestInFindingSecret@34</password>

    <!-- ❌ FAKE OAuth Client Secret -->
    <oauthClientSecret>fakeOAuthClientSecret_1234567890abcdef</oauthClientSecret>

    <!-- ❌ FAKE Refresh Token -->
    <oauthRefreshToken>fakeRefreshToken_xxxxxxxxxxxxxxxxx</oauthRefreshToken>

    <oauthScope>api refresh_token</oauthScope>
</NamedCredential>
