sudo apt update && sudo apt upgrade -y

# python dependencies
sudo apt install python3-pip
sudo apt install python3-virtualenv

# install ngrok
sudo apt install unzip
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
sudo unzip -d /usr/local/bin ngrok*

# create folder for bolt-app
mkdir bolt
cd bolt
python3 -m virtualenv .venv
source .venv/bin/activate

# store secrets in environment variables - bolt-test-app
export SLACK_BOT_TOKEN=''
export SLACK_SIGNING_SECRET=''



# use ngrok for local development - bolt listens at port 3000
ngrok http 3000
