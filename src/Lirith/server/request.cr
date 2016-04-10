module Lirith
  module Server
    class Request

      property :method
      property :body
      property :path
      property :query_string

      def initialize (server_request) # : HTTP::Request
        @path = server_request.path.to_s
        @method = server_request.method.to_s
        #puts @method
      end

      def to_s
        "(" + @method + " " + @path + ")"
      end

    end
  end
end
