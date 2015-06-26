

class PizzaFinderController < ApplicationController

  get '/' do
    
    @pizza = FindPizza.new.get_best_pizza.businesses
  
    erb :"/index.html"

  end
end