require 'spec_helper'

describe AuthenticationController do

  context "twitter ouath" do
    it "can create session" do
      pending "como pruebo twitter omniauth???"
    end
  
    it "can destroy session" do
      get 'destroy'
      response.should redirect_to(root_path)
    end
  end
  
end