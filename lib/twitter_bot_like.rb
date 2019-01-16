require 'twitter' # appelle la gem twitter
require 'dotenv'# Appelle la gem Dotenv
require 'pry' # appelle la gem pry
Dotenv.load 


client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.search('#bonjour_monde').take(25).each do |tweet|
client.fav tweet	
end