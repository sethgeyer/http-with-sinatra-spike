require "sinatra"
require "sinatra/reloader"

items = []

get "/" do
  "items length: #{items.length}"
end