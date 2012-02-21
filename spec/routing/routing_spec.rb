require 'spec_helper'

describe "routing" do
  context "events" do
    it "routes /events to events#index" do
      { :get => "/events" }.should route_to(
        :controller => "events",
        :action => "index"
      )
    end
  end
end
