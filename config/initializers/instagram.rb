require 'instagram'

Instagram.configure do |config|
  puts "INSTAGRAM BEING ACCESSED!"
  config.client_id = ENV["INSTAGRAM_APP_ID"]
  config.client_secret = ENV["INSTAGRAM_SECRET_ID"]
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
