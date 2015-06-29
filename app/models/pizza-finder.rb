require 'dotenv'
Dotenv.load
require 'yelp'
require 'pry'

class FindPizza 

  YELP_CLIENT = Yelp::Client.new({consumer_key:ENV["YELP_CONSUMER_KEY"],
                                  consumer_secret:ENV["YELP_CONSUMER_SECRET"],
                                  token:ENV["YELP_TOKEN"],
                                  token_secret:ENV["YELP_TOKEN_SECRET"]
                                  })

 
  def get_best_pizza
      best_pizza = []
      params = {term: 'pizza',
            limit: 10,
            sort: 2 #sorts by rating
          }

      bounding_box = { sw_latitude: 40.704822, sw_longitude: -74.018725, ne_latitude: 40.708336, ne_longitude: -74.007181 }
      results = YELP_CLIENT.search_by_bounding_box(bounding_box, params)
      #= YELP_CLIENT.search('Financial District, Manhattan, NY', params)

            

  end

  # pizza = FindPizza.new.get_best_pizza
  # binding.pry
end

