OVPN_DATA="ovpn-data"
USER=$1


docker run --rm -it -v $OVPN_DATA:/etc/openvpn kylemanna/openvpn ovpn_revokeclient $USER

# make sure no leftovers
docker run --rm -it -v $OVPN_DATA:/etc/openvpn kylemanna/openvpn rm /etc/openvpn/pki/reqs/$USER.req
docker run --rm -it -v $OVPN_DATA:/etc/openvpn kylemanna/openvpn rm /etc/openvpn/pki/private/$USER.key

