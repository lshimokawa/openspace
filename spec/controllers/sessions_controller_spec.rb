require 'spec_helper'

describe SessionsController do
  render_views

  it "should show all sessions of the event on GET index" do
    get 'index'
    response.should be_success
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
