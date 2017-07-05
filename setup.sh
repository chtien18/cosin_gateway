# setup script for Orange Pi

cd

apt install python-pip -y

# Dependency for network manager
apt install isc-dhcp-server

pip install Flask Flask-bootstrap Flask-moment

cd consin_gateway

echo "-----------------------------------------------"
echo "    ###     ###       ####    #   ##    # "
echo "  #       #     #    #        #   # #   # "
echo " #       #       #     ##     #   #  #  # "
echo "  #       #     #        #    #   #   # # "
echo "    ###     ###      ####     #   #    ## "
echo "-----------------------------------------------"

echo "Cosin has been installed"
echo "please run 'python hello.py'"