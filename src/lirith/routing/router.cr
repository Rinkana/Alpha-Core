require "./route"

module Lirith
  module Router
    class RouteNotFoundException < Exception; end
    class Router
      getter :routes

      def initialize
        @routes = [] of Route
        Logger::Log.info "Router setup"
      end

      def find_route(method, path) : Route
        @routes.each do |route|
          if route.matches?(method, path)
            return route
            break
          end
        end
        raise RouteNotFoundException.new(method + " " + path)
      end

      def call(request : Server::Request, response : Server::Response) : Server::Response
        if route = find_route(request.method, request.path)
          route.callback.call(request, response)
        end

        response
      end

      def call(request : Server::Request, &block)

      end

      def configure(&block)
        with self yield self
      end

      macro add_route(method, path, callback)
        routes << Lirith::Router::Route.new({{method}}, {{path}}) do |request, response|
          {{callback.receiver}}.new.{{callback.name}}(request, response)
        end
      end

    end
  end
end
