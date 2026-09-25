```bash
#!/bin/bash

# Experiment 4: X.509 Certificate Expiration Testing
# This file contains the commands used to test
# certificate validity and expiration.


# --------------------------------------------------
# 1. Check certificate validity dates
# --------------------------------------------------
# Displays the start and expiry dates of the certificate.
openssl x509 -in certificate.crt -noout -dates


# --------------------------------------------------
# 2. Verify the certificate normally
# --------------------------------------------------
# Verifies the certificate by using the certificate
# itself as a trusted certificate.
# The certificate should be valid at the current time.
openssl verify -CAfile certificate.crt certificate.crt


# --------------------------------------------------
# 3. Test certificate expiration
# --------------------------------------------------
# Checks the certificate at a future time.
# This demonstrates how OpenSSL detects an expired certificate.
openssl verify -attime 1821720000 \
-CAfile certificate.crt certificate.crt


# --------------------------------------------------
# 4. Display the verification result
# --------------------------------------------------
# The verification should fail because the certificate
# is expired at the specified future time.
echo "Certificate expiration test completed."
```
