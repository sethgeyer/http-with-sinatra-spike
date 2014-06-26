require "sinatra/base"
# require "sinatra/reloader"

class MyApp < Sinatra::Application
#  register Sinatra::Reloader


  def initialize
    super
    @items = ["Apples", "Bananas", "Cucumbers", "Dill" ]
  end



  get "/" do
    erb :root
  end

  get "/steve" do
    erb :worked
  end


  get "/items" do
    @things = ["A", "B", "C"]
    erb :items
  end

  get "/items/:blah" do
    @id = params[:blah].to_i
    erb :item
  end

  run! if app_file == $0
end
