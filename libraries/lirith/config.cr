module Lirith
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

    #def self.configure(&block)
    #  yield INSTANCE
    #end

    #def configure(&block)
    #  with self yield self
    #end

    #def configure(&block)
    #  puts "configure"
    #  with self yield self
    #end
    #Get a config variable
    #def self.get(config_request)
    #  puts config_request;
    #  config_request = config_request.split('.')
    #  if(config_request.size > 0)

    #    puts IniFile.load("twee=drie")

        #config_data = JSON.parse(File.read("config/#{config_request[0]}.json"))
        #config_data[config_request[1]]
    #  end
    #end
  end
end
