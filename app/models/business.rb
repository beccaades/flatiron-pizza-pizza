class Business
  attr_reader :name, :address, :phone, :rating_img, :review_snippet , :yelp_page, :img_url, :coord

  def initialize(biz_burst)
    @name = biz_burst.name
    @address = biz_burst.location.address.first
    @phone = biz_burst.display_phone
    @rating_img = biz_burst.rating_img_url_large
    @review_snippet = biz_burst.snippet_text
    @yelp_page = biz_burst.url
    @img_url = biz_burst.image_url
  end
  
end
