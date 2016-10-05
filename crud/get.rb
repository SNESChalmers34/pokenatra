# HOME PAGE
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

# TRAINERS
get "/trainers" do
  @trainer = Trainer.all
  erb :"trainers/index"
end

get 'trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end

get "/trainers/new" do
  erb :"trainers/new"
end

get "/trainers/edit" do
  @trainer = Trainer.find()
end
