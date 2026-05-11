public with sharing class AccountService {

    // Hardcoded credentials (for testing detection)
    private static final String DB_USERNAME = 'admin_user';
    private static final String DB_PASSWORD = 'P@ssw0rd123!';
    private static final String API_KEY = 'sk_test_51H8fOeExampleKey123456';

    public static void processAccounts() {

        System.debug('Connecting with credentials...');

        // Example of connection string with password
        String connectionString = 'jdbc:mysql://localhost:3306/salesforce?user=admin_user&password=P@ssw0rd123!';

        // Embedded token in header
        String authHeader = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.randomPayload.signature';

        // AWS-like key
        String awsAccessKey = 'AKIAIOSFODNN7EXAMPLE';
        String awsSecretKey = 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY';

        System.debug(connectionString);
        System.debug(authHeader);
    }
}