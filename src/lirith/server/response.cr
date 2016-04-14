module Lirith
  module Server
    class Response

      property :headers
      property :content_type;

      property :view

      def initialize(@view)
        @content_type = "text/plain"
        #puts "init response" + @view
      end

      def render
        return @view
      end
    end
  end
end
