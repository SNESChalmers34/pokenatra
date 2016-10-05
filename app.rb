require "sinatra"
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"
require_relative "models/pokemon"

get '/' do
  redirect "/pokemons"
end

get "/pokemons" do
  @pokemon = Pokemon.all
  erb :"pokemons/index"
end
