1. run create-container.sh   if an ip is not given, the script will automatically get the external ip online with curl    
` IP = "the ip to put into client.ovpn file"   
  ./create-container.sh $IP   
`

2. run create-user.sh and then send the user his OTP QR they need to scan it with their phone in an app such as google authenticator or similar to be able to create OTP codes it will also output an .ovpn file at the same directory where it is run for the user.   
`
USER = "test"   
./create-user.sh $USER   
`
3. run delete-user.sh to remove an user    
`
USER = "test"   
./delete-user.sh $USER   
`

3. run list-users.sh to list the current users so that you can see who you  can delete    
`
USER = "test"   
./list-users.sh $USER   
`    
enjoy.
