Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'k2njlPTycfdAdOTMscTPQA', '6VxEBmC7feSYy1dzinkcBnVJlKstUoBpbzY7uIixI'
end

#Rails.application.config.middleware.use OmniAuth::Builder do  
#	provider :twitter, Rails.application.config.twitter_key, Rails.application.config.twitter_secret
#end