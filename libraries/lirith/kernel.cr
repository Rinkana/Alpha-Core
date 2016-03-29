require "./http"
require "./routing"
require "http"

module Lirith
  class Kernel

    property :port
    property :ip

    def initialize
      Logger::Log.info("Kernel initialized")
    end

    def self.settings
      Config::INSTANCE
    end

    #def self.router
    #  Routing::Router::INSTANCE
    #end

    def start_server
      ip = self.class.settings.ip
      port = self.class.settings.port
      request_handler = HTTP::RequestHandler.new

      router = Router::Router.new

      Logger::Log.info("Starting server on #{ip}:#{port}")

      server = HTTP::Server.new ip, port, request_handler
      #server.listen
    end

  end
end
