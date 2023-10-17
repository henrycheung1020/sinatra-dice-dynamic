require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_dice/:number_side") do
  @num_dice = params.fetch("number_dice").to_i 
  @num_side = params.fetch("number_side").to_i 
  @rolls = []

  @num_dice.times do 
    die = rand(1..4)

    @rolls.push(die)

  end
  erb(:flexside)
end
