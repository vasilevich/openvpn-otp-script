OVPN_DATA="ovpn-data"


docker run --rm -it -v $OVPN_DATA:/etc/openvpn kylemanna/openvpn ovpn_listclients
