class IndexController
  def initialize
  end

  def index(request, response)
    puts "In controller: " + request.path

  end

  def asset(request, response)
    response.view = "test"
    
    puts "Got asset request: " + request.path
  end

end
