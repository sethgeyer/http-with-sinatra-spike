require "sinatra/base"
require "sinatra/reloader"

class MyApp < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  def initialize
    super
    @items = []
  end

  get "/" do
    "items length: #{@items.length}"
  end

  run! if app_file == $0
end
