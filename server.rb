require 'socket'

class Server

   def initialize(address, port)
      @server_socket = TCPServer.open(port, address)
      puts 'Started server.........'
      run
   end

   def run
        client_connection = @server_socket.accept
        string_conect(client_connection)
   end

   def string_conect(command)
        cmd = command.gets.chomp
        cmd.split.each do |args|
            puts "#{args}"  
        end
        puts "Vc disse: #{cmd} - #{Time.now.ctime}"
        command.puts "Vc disse: #{cmd} - #{Time.now.ctime}" 
   end

end	

Server.new( 2000, "localhost" )
