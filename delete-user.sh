OVPN_DATA="ovpn-data"
USER=$1


docker run --rm -it -v $OVPN_DATA:/etc/openvpn kylemanna/openvpn ovpn_revokeclient $USER
