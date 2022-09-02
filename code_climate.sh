apt-get update -y
apt-get install curl git gpg -y

curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 -o test-reporter-latest-linux-amd64 
curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64.sha256 -o test-reporter-latest-linux-amd64.sha256
curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64.sha256.sig -o test-reporter-latest-linux-amd64.sha256.sig

if ! grep test-reporter-latest-linux-amd64 test-reporter-latest-linux-amd64.sha256 | shasum -a 256 -c - | grep "OK"
then 
   exit
fi

gpg --keyserver  keys.openpgp.org --recv-keys 9BD9E2DD46DA965A537E5B0A5CBF320243B6FD85
if ! gpg --verify test-reporter-latest-linux-amd64.sha256.sig test-reporter-latest-linux-amd64.sha256
then
   exit
fi

chmod +x test-reporter-latest-linux-amd64
pip3 install -r requirements.txt
./test-reporter-latest-linux-amd64 before-build
pytest --cov=. --cov-report=xml --cov-report=term app.py
exit 1
cat coverage.xml
./test-reporter-latest-linux-amd64 after-build