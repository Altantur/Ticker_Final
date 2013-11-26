Rails.application.config.middleware.use OmniAuth::Builder do
	  provider :facebook, '231830386991204', '5c3e0a7e8d12f718eece8a6f009fa612'
end
