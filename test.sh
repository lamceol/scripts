


for (( i=1; i<=5; i++ ))
do  
   ifconfig | grep 'ether' >> rob.txt
   ifconfig | grep "mtu"  >> rob.txt
   echo "Done iteration $i"
   sleep 2
   sleep 1
done