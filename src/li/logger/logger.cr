module Logger
  class Log

    def self.error(message)
    end

    def self.warn(message)
    end

    def self.info(message)
      puts "INFO: #{message}"
    end
  end
end
