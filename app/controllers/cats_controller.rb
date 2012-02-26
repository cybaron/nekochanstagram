class CatsController < ApplicationController
  def index
    params[:keyword] ||= DEFAULT_KEYWORD
    params[:keyword] = DEFAULT_KEYWORD if params[:keyword] == ""
    params[:page_size] = DEFAULT_PAGE_SIZE

    @keyword = params[:keyword]
    @page_size = params[:page_size]

    @media_tag = Instagram.tag_recent_media( @keyword, {
      :count => @page_size
    })

  end

end
