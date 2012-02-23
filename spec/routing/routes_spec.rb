require 'spec_helper'

describe "routing" do
  
  it "root path is navigation#index" do
    { :get => "/" }.should route_to(:controller => "navigation", :action => "index")
  end  
  
  context "events" do
    it "routes /events to events#index" do             
      { :get => "/events" }.should route_to(:controller => "events", :action => "index")
    end
  end

end
