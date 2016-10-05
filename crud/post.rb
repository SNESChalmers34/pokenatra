post "/pokemons" do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemons"
end

post "/trainers" do
  @trainer = Trainer.create(params[:trainer])
  redirect "/trainers"
end
