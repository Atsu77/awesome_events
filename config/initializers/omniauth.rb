Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, 'c0abfc7e236b174deeed', 'bd4315584ca296c87d559665a49474b8745e93d5'
  else
    provider :github,
             Rails.application.credentials.github[:client_id]
    Rails.application.credentials.github[:client_secret]
  end
end
