

class PizzaFinderController < ApplicationController

  get '/' do
    
    businesses = FindPizza.new.get_best_pizza.businesses #array of BurstStructs. Each Struct is a biz.
    
    @bizs_from_yelp = [].tap do |collection|
      businesses.each do |biz_burst|
        collection << Business.new(biz_burst) if biz_burst.is_closed == false
      end
    end
  
    erb :"/index.html"

  end
end