require "http/server"

class Server
  property :server

  def initialize
    puts "Server listening on 8080"
    @server = HTTP::Server.new("0.0.0.0",8080) do |context|
      #puts "Incomming requrest"
      context.response.content_type = "text/plain"
      context.response.print "Hello world! The time is #{Time.now}"
    end
    @server.listen
  end
end
