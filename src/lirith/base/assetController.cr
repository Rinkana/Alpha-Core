module Lirith
  class AssetController < BaseController

    def get(request, response)
      #response.content_type = "application/octet-stream"
      #response.content_type = "image/png"
      #TODO: detect mime type
      response.content_type = "application/unknown"
      response.view = File.read("/vagrant/App/src/App/public/image/favicon.png")
    end

  end
end
