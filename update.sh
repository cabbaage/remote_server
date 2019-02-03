#！/bin/bash 
ps_se=$(ps -ef | grep se.rb | grep ruby)
if [! -n $ps_se]
then
	pid_se=$(expr "$(ps -ef |grep ruby |grep se.rb)"  : '^\w*\s*\([0-9]*\)\s*')
	echo $pid_se
fi
echo "se.rb had been killed"