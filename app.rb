require "sinatra/base"
# require "sinatra/reloader"

class MyApp < Sinatra::Application
#  register Sinatra::Reloader


  def initialize
    super
    @items = ["Apples", "Bananas", "Cucumbers", "Dill" ]
  end


  #ROOT
  get "/" do
    erb :root
  end

  #INDEX
  get "/items" do
    @things = ["A", "B", "C"]
    erb :index
  end

  #NEW
  get "/item/new" do
    @id = nil
    erb :new
  end

  #SHOW
  get "/items/:array_number" do
    @id = params[:array_number].to_i
    erb :show
  end

  #EDIT
  get "/items/:array_number/edit" do
    @id = params[:array_number].to_i
    erb :edit
  end

  #UPDATE
  put "/items/:id" do
    id = params[:id]
    veggie_name = params[:veggie_name]
    @items[id.to_i] = veggie_name
    erb :index
  end


  #CREATE
  post "/items/new" do
    veggie_name = params[:veggie_name]
    @items << veggie_name
    erb :index
  end

  run! if app_file == $0
end
