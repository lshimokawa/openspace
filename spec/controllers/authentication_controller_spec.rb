require 'spec_helper'

describe AuthenticationController do

  before do
    @user = Factory.create(:user)
    OmniAuth.config.add_mock(:twitter, { 
        uid:      @user.uid,
        provider: @user.provider
    })
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter] 
  end

  context "twitter ouath" do
    it "can create session" do
      get 'create'
      controller.session[:user_id].should == @user.id
      response.should redirect_to(root_path)
    end
  
    it "can destroy session" do
      get 'destroy'
      response.should redirect_to(root_path)
    end
  end
  
end