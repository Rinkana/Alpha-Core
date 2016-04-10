module Lirith
  module Core
    class Kernel

      property :port
      property :ip

      property :router

      def initialize
        Logger::Log.info("Kernel initialized")
        @router = Router::Router.new
      end

      def self.settings
        Config::INSTANCE
      end

      def start_server
        ip = self.class.settings.ip
        port = self.class.settings.port
        request_handler = Server::RequestHandler.new(@router)

        Logger::Log.info("Starting server on #{ip}:#{port}")

        server = HTTP::Server.new ip, port, request_handler
        server.listen
        #test_request = Server::Request.new ([] of Int32)
      end

    end
  end
end
