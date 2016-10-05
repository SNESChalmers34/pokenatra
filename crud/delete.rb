delete "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemons"
end
