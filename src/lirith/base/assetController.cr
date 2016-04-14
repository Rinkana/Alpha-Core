module Lirith
  class AssetController < BaseController

    def get(request, response)
      response.content_type = "application/octet-stream"
      response.content_type = "image/png"
      response.view = File.read("/vagrant/App/src/App/public/image/favicon.png")
      #File.open("/vagrant/App/src/App/public/image/favicon.png") do |file|
      #  IO.copy(file, response.view)
      #end
      #puts file
    end

  end
end
