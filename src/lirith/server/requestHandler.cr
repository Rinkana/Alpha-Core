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
        response = Response.new(request.path)

        begin
          @router.call(request, response)
        rescue
          Logger::Log.info("Route not found! " + request.to_s)
        end

        context.response.content_type = response.content_type
        context.response.print response.render
      end

    end
  end
end
