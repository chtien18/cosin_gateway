# setup script for Raspberry Pi

sudo apt-get install python-pip -y

# Dependency for network manager
sudo apt-get install isc-dhcp-server

sudo pip install Flask Flask-bootstrap Flask-moment

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