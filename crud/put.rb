put "/pokemons/:id" do
  puts ("*"  * 40)
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end
