#!/bin/bash
mkdir -p src/secretDir
touch src/secretDir/.secret
chmod 600 src/secretDir/.secret
rm -r src/maliciousFiles
/bin/bash src/generateSecret.sh
# comment added
