## OPENVPN-OTP-SCRIPT
these are very very basic scripts, that use this docker package:https://github.com/kylemanna/docker-openvpn
to create a simple openvpn setup, I just went through their documentation and put it in the form of 4 simple scripts to make it more simple to use for me.

tested on ubuntu 20.04 but should work on any enivorment that supports docker

so just install docker and have fun.


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
