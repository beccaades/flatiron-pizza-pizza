class Business
  attr_reader :name, :address, :phone, :rating_img, :review_snippet , :yelp_pg, :img_url, :picture_url

  def initialize(biz_info = {})

    @address = biz_info[:address]
    @phone = biz_info[:phone]
    @rating_img = biz_info[:rating_img]
    @review_snippet = biz_info[:review_snippet]
    @yelp_pg = biz_info[:yelp_pg]
    @img_url = biz_info[:img_url]
    @picture_url = biz_info[:picture_url]
  end
  
end
