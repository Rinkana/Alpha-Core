require "json"

module Lirith
  module Router
    class Router
      property :routes

      def initialize
        @routes = [] of Route
        Logger::Log.info "Router setup"
        build_routes
      end

      def build_routes
        routes = JSON.parse(File.read("config/routes.json"))

        routes.each do |route, data|
          route_parts = route.as_s.split(" ")
          route = Route.new route_parts[0], route_parts[1], data
          route.match("/")
          @routes << route
        end

        #puts @routes

      end

    end
  end
end
