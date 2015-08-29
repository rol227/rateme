Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["facebook_key"], ENV["facebook_secret"]
end

OmniAuth.config.on_failure = SessionsController.action(:omniauth_failure)