module Lirith
  module Router
    class Route

      property :method
      property :path
      property :callback

      getter :regex

      def initialize(method, path, callback)
        @method = method
        @path = path
        @callback = callback
        @regex = /.+/

        parse
      end

      def route_parts
        @path.split("/").reject { |part| part == "" }
      end

      def parse
        route_parts = route_parts

        route_parts.map! do |part|
          #puts "----" + part
          if part.char_at(0) == ':'
            parameter_name = part[1..-1]
            #puts parameter_name
            part = "([a-zA-Z0-9\-\_]+)"
          end
          part
        end
        @regex = /^\/#{route_parts.join("\\/")}$/
        @regex
      end

      def match(path : String)
        puts path.scan(@regex)
      end

    end
  end
end
