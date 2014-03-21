class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid
  
  
  CONSUMER_KEY = 'k2njlPTycfdAdOTMscTPQA'
  CONSUMER_SECRET = '6VxEBmC7feSYy1dzinkcBnVJlKstUoBpbzY7uIixI'
  OPTIONS = {site: "http://api.twitter.com", request_endpoint: "http://api.twitter.com"} 
  
  def self.create_with_omniauth(auth)
	create! do |user|
		user.provider = auth ["provider"]
		user.uid = auth["uid"]
		user.name = auth['info']['name']
		user.oauth_token = auth['credentials']['token']     
		user.oauth_secret = auth['credentials']['token'] 
	end
  end
  
  
  def tweet(tweet)    
  client = Twitter::REST::Client.new do |config|
  config.consumer_key        = User::CONSUMER_KEY  
  config.consumer_secret     = User::CONSUMER_SECRET   
  config.access_token        = oauth_token      
  config.access_token_secret = oauth_secret    
  end
  end
end
