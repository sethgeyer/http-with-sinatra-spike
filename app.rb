require "sinatra"
require "sinatra/reloader"

items = [
  {:something => "blah"}
]

get "/" do
  "items length: #{items.length}"
end