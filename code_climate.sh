apt-get update -y
apt-get install curl git gpg -y
curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
chmod +x cc-test-reporter
pip3 install -r requirements.txt
./cc-test-reporter before-build
pytest --cov=. --cov-report=xml --cov-report=term app.py
./cc-test-reporter after-build