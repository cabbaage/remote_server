#！/bin/bash 
ps_se=$(ps -ef | grep se.rb | grep ruby)
if [: -n $ps_se]
then
else
	[[$ps_se =~ ^(\w*)\s*(\d*)\s*(\d*)]]
	echo $1
	echo $2
	echo $3
fi
echo "se.rb had been killed"