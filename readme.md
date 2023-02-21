1. run create-container.sh
` IP = "the ip to put into client.ovpn file"
  ./create-container.sh $IP
`

2. run create-user.sh and then send the user his OTP QR they need to scan it with their phone in an app such as google authenticator or similar to be able to create OTP codes
`
USER = "test"
./create-container.sh $USER
`

enjoy.
