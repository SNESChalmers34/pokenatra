class Pokemon < ActiveRecord::Base
  belongs_to :trainer
end

get '/' do
  erb :"index"
end

#POKEMON
get "/pokemons" do
  @pokemon = Pokemon.all
  erb :"pokemons/index"
end

get "/pokemons/new" do
  erb :"pokemons/new"
end

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

get "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

# post
post "/pokemons" do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemons"
end

#PUT
put "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end

#DESTROY
delete "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemons"
end
