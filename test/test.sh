# --------------------------------
#    DO NOT MODIFY THIS FILE     #
# --------------------------------

set -e

# Check secret
SECRET=$(head -n 1 SOLUTION | xargs | md5sum)

if [ "$SECRET" != "b326212055e5c61bfb292d47046215f8  -" ]
then
  echo "Invalid secret in the SOLUTION file."
  exit 1
else
  echo -e "\n\nCorrect secret!\n\n"
fi

WORKDIR=$(pwd)
wget https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/linux_project/secretGenerator.tar.gz
tar -xf secretGenerator.tar.gz
echo "q" > src/CONTENT_TO_HASH
/bin/bash mySolution.sh

cd $WORKDIR

if [ ! -d src/secretDir ]
then
  echo "Directory src/secretDir is missing"
  exit 1
fi

if [ ! -f src/secretDir/.secret ]
then
  echo "File src/secretDir/.secret is missing"
  exit 1
fi

SECRET=$(head -n 1 src/secretDir/.secret)

if [ "$SECRET" != "c3be117041a113540deb0ff532b19543  -" ]
then
  echo "Failed to generate a successful secret"
  exit 1
fi

echo "Well Done! you've passed all tests"
