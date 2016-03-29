module Lirith
  module HTTP
    class RequestHandler

      def initialize
        Logger::Log.info("RequestHandler initialized")
      end

      def call(context : HTTP::Server::Context)
        #HTTP::Request.new
        puts context.request.path
        request = HTTP::Request.new

        context.response.content_type = "text/html"
        context.response.print "<h1>Hello world! The time is #{Time.now}</h1>"
      end

    end
  end
end
