#!/bin/bash

#!/bin/bash

#!/bin/bash

#!/bin/bash

echo "🔍 Running NBDefense scan..."

# Use 'pre-commit' directly (it's in PATH on Windows)
pre-commit run --all-files

if [ $? -ne 0 ]; then
  echo "❌ Vulnerabilities found! Commit blocked."
  exit 1
else
  echo "✅ No vulnerabilities found. Proceeding with commit."
fi




# # Check the output for vulnerabilities
# if grep -q "vulnerability" nbdefense0423-1347.html; then
#   echo "Vulnerabilities detected! Commit aborted."
#   exit 1  # Non-zero exit code stops the commit
# else
#   echo "No vulnerabilities found. Proceeding with commit."
#   exit 0  # Zero exit code allows the commit
# fi
