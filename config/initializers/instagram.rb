require "instagram"

require 'secret.rb' if Rails.env.development?

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_CLIENT_ID']
  config.client_secret = ENV['INSTAGRAM_CLIENT_SECRET']
  config.access_token = ENV['INSTAGRAM_ACCESS_TOKEN']
end
