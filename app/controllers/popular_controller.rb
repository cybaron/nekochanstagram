class PopularController < ApplicationController
  def index
    @media_popular = Instagram.media_popular
  end

end
