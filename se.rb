require 'socket'      # Sockets 是标准库
require "thread"
port = 2000
 
s = TCPServer.open(port)
puts "listining : #{port}" 
loop {
	puts "waiting for client"
	puts "#{Time.now}"
	Thread.new(s.accept) do |client|
	client.puts "#{Thread.currect}"
	client.puts "successfully connect to me"
	client.puts(Time.now)
	#puts client.gets 
	client.close
	end 
}