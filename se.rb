require 'socket'      # Sockets 是标准库

port = 2000
 
s = TCPServer.open(port)
puts "listining : #{port}" 
loop {
	puts "waiting for client"
	client = s.accept
	client.puts "successfully connect to me"
	client.puts(Time.now)
	#puts client.gets 
	client.close
}