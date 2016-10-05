class Trainer < ActiveRecord::Base
  has_many :pokemons
end

#GETS
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

#POST
post "/trainers" do
  @trainer = Trainer.create(params[:trainer])
  redirect "/trainers"
end
