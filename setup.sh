# setup script for Orange Pi
apt update

apt upgrade -y

echo ""

apt install python-pip -y

pip install Flask

cd && git clone https://github.com/chtien18/consin_gateway.git

cd consin_gateway

echo "Cosin has been installed"
echo "please run 'python hello.py'"