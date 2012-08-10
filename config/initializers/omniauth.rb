Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'YTy0vUAW14iGHJyybrIFA', 'QO4ogMO2pfA2WjCVqOq77wBqnog7r2TGxJ8GNNxcEeM'
  provider :facebook, '346814295398817', '4c620cd1d8e929835bb9d23821cbdc83', :scope => 'email', :display => 'popup'
end