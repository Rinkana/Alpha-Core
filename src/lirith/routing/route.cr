module Lirith
  module Router
    class Route

      property :method
      property :path
      property :callback

      getter :regex

      #macro call_controller(scallback)
      #  {% a = scallback.split("@") %}
      #  res = {{a[0].id}}.new.{{a[1].id}}
      #  res
      #end

      def initialize(@method : String, @path : String, &@callback : Server::Request , Server:: Response -> )
        @regex = /.+/
        parse
      end

      def route_parts
        @path.split("/").reject { |part| part == "" }
      end

      def parse
        route_parts = route_parts

        route_parts.map! do |part|
          if part.char_at(0) == ':'
            parameter_name = part[1..-1]
            part = "([a-zA-Z0-9\-\_]+)"
          end
          part
        end
        @regex = /^\/#{route_parts.join("\\/")}$/
        @regex
      end

      def matches?(method, path)
        matches = (path.scan(@regex).size > 0 && method == @method)
        matches
      end

    end
  end
end
