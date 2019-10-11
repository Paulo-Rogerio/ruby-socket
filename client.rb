require 'socket'
hostname = 'localhost'
port = 2000
s = TCPSocket.open(hostname, port)

puts "Starting the Client..................."
msg = "amor sexo"
s.puts(msg)
puts s.gets.chomp
puts "Closing the Client..................."
s.close
