class ApplicationController < ActionController::Base
  protect_from_forgery
  DEFAULT_KEYWORD = 'cat'
  DEFAULT_PAGE_SIZE = 30
end
