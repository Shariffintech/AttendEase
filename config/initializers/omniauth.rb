# Required to allow get requests, which enables a security flaw but that's how the tutorial is set up.
OmniAuth.config.allowed_request_methods = [:post, :get]
# OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
    ENV["GOOGLE_CLIENT_ID"],
    ENV["GOOGLE_CLIENT_SECRET"]
    
end