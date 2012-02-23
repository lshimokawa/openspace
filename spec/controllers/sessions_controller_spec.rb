require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET index" do
    it "assigns all posts as @sessions" do
      session = Factory.create(:session)
      get :index
      assigns(:sessions).should eq([session])
    end
  end
  
  describe "GET show" do
    it "assigns the requested session as @session" do
      session = Factory.create(:session)
      get :show, {:id => session.to_param}
      assigns(:session).should eq(session)
    end
  end

end