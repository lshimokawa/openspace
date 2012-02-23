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
  
  describe "GET new" do
    it "assigns a new session as @session" do
      get :new
      assigns(:session).should be_a_new(Session)
    end
  end

  describe "GET edit" do
    it "assigns the requested session as @session" do
      session = Factory.create(:session)
      get :edit, {:id => session.to_param}
      assigns(:session).should eq(session)
    end
  end
    
  it "should vote for a session on POST vote" do
    session[:user_id] = Factory.create(:user).id
    session = Factory.create(:session)
    post 'vote', id: session.id
    #response.should be_success
    pending
  end
  
  it "should unvote for a session on POST unvote" do
    session[:user_id] = Factory.create(:user).id
    session = Factory.create(:session)
    post 'unvote', id: session.id
    #response.should be_success
    pending
  end

end