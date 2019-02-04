#！/bin/bash 
ps_se=$(ps -ef | grep se.rb | grep ruby)
if [ -n "$ps_se" ]
then
	pid_se=$(expr "$(ps -ef |grep ruby |grep se.rb)"  : '^\w*\s*\([0-9]*\)\s*')
	res_kill_se=$(kill $pid_se)
fi
echo "se.rb had been killed"
echo "now pulling upgrade"
up=$(git pull origin master)
if [$? == 0]
then
	echo "upgrade successfully"
fi
echo $(ruby se.rb) >> log_se_rb.log 