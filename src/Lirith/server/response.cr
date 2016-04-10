module Lirith
  module Server
    class Response

      property :headers

      property :view

      def initialize(@view)
        puts "init response" + @view
      end

      def render
        puts "View:" + @view
      end
    end
  end
end
