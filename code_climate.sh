echo "CC_TEST_REPORTER_ID: ${CC_TEST_REPORTER_ID}"
echo "GITHUB_SHA: ${GITHUB_SHA}"
echo "GITHUB_REF_NAME: ${GITHUB_REF_NAME}"
echo "GIT_BRANCH: ${GIT_BRANCH}"

apt-get update -y
apt-get install curl git gpg -y
curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
chmod +x cc-test-reporter
pip3 install -r requirements.txt
./cc-test-reporter before-build
pytest --cov=. --cov-report=xml --cov-report=term app.py
cat coverage.xml
./cc-test-reporter after-build