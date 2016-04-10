module Lirith
  module Core
    class Config
      property :env
      property :ip
      property :port

      INSTANCE = new

      def initialize
        @env = "production"
        @ip = "127.0.0.1"
        @port = 80
      end

      def self.instance
        INSTANCE
      end

    end
  end
end
