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
            limit: 5,
            sort: 2 #sorts by rating
          }
      results = YELP_CLIENT.search('New York', params)
  end

end


# pizza = FindPizza.new.get_best_pizza
# binding.pry
