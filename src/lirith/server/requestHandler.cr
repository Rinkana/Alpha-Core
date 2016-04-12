module Lirith
  module Server
    class RequestHandler

      def initialize(router : Router::Router)
        Logger::Log.info("RequestHandler initialized")
        @router = router
      end

      def call(context : HTTP::Server::Context)
        #HTTP::Request.new
        #puts context.request
        request = Request.new(context.request)
        #response = Response.new
        begin
          @router.call(request)
        rescue
          Logger::Log.info("Route not found! " + request.to_s)
        end

        context.response.content_type = "text/html"
        context.response.print "<h1>Hello world! The time is #{Time.now}</h1>"
      end

    end
  end
end
