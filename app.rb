require "sinatra/base"
require "sinatra/reloader"

class MyApp < Sinatra::Application
  register Sinatra::Reloader

  def initialize
    super
    @items = []
  end

  get "/" do
    "items length: #{@items.length}"
  end

  run! if app_file == $0
end
