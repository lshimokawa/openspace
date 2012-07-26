Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'YTy0vUAW14iGHJyybrIFA', 'QO4ogMO2pfA2WjCVqOq77wBqnog7r2TGxJ8GNNxcEeM'
  provider :facebook, '343775789038073', '0d96c843e0984bdefcc728106fb37e41', :scope => 'email', :display => 'popup'
end