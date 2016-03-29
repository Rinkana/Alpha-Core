module Lirith
  class Application

    def initialize
    end

    def self.settings
      Config::INSTANCE
    end

    def start
      puts self.class.settings.env
      kernel = Kernel.new
      kernel.start_server
    end
  end
end
