Rails.application.config.middleware.use OmniAuth::Builder do
	  provider :facebook, '181547222042109', '7b2b4e8a5e1a1ec806b010710e034b8c'
end
