Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'YTy0vUAW14iGHJyybrIFA', 'QO4ogMO2pfA2WjCVqOq77wBqnog7r2TGxJ8GNNxcEeM'
  
  # Development
  # provider :facebook, '406249689438914', '5b82596979d78a087e67be81ece8601a', :scope => 'email', :display => 'popup'
  
  # Production TODO change to environment variables
  provider :facebook, '346814295398817', '4c620cd1d8e929835bb9d23821cbdc83', :scope => 'email', :display => 'popup'
end