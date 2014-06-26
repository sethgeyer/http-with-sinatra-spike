require "sinatra/base"

class MyApp < Sinatra::Application
  def initialize
    super
    @items = []
  end

  get "/" do
    "items lesdfngth: #{@items.length}"
  end

  run! if app_file == $0
end
