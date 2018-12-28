#!/bin/bash
echo ""
echo ""
echo ""
echo " ********************************************************************"
echo " ********************************************************************"
echo " *** 																***"
echo " *** xx      xx      xxxxxxxx xxxxxxxx xx       xxxxxxx 			***"
echo " ***  xx    xx       xx          xx    xx 	  xx 	  			***"
echo " ***     xx     xxx  xxxxxxxx    xx    xx 	  xxxxxxx 			***"
echo " ***  xx    xx       xx          xx    xx 	  xx 	  			***"
echo " *** xx      xx      xx       xxxxxxxx xxxxxxxx xxxxxxx 			***"
echo " *** 																***"
echo " ********************************************************************"
echo " ********************************************************************"
echo ""
echo ""
echo ""
while true ; do
{
echo "Please Enter Your USER NAME :"
read name
file_name="$name.txt"
if [ −f "$file_name" ] ; then
echo −e "$file_name exist !! "
else
echo −e "Your File doesn't exist ! Do You Want To Create It ? Enter (y)
es or (n)o : "
read answer
fi
if [ "$answer" == "y" ] ; then
touch $file_name;
echo "$name" >> username.list;
echo −e "Your File Is Created ";
fi
echo −e "Choose option :"
echo −e "1 . Edit The File ."
echo −e "2 . Print Present Users."
echo −e "3 . End The Program ."
read answer2
case $answer2 in
1 ) vim $file_name;
;;
2 ) less username.list;
;;
3 ) exit 0;
;;
esac # −−− end of case −−−
echo −e "Do You Want to encrypt it ? Enter (y)es or (n)o :"
read answer3
if [ "$answer3" == "y" ] ; then
echo −e "Please Enter passphrase : " ;
read passphrase ;
mcrypt $file_name −k $passphrase ;
rm $file_name;
fi
echo −e "Do You Want to Decrypt Your File ? Enter (y)es or (n)o :"
read answer4
if [ "$answer4" == "y" ]; then
echo −e "Enter passphrase";
file_name_d="$file_name.nc"
read passphrase_d;
mcrypt −k $passphrase_d −d $file_name_d;
fi
}
done
