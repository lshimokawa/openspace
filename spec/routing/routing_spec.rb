require 'spec_helper'

describe "routing" do
  context "sessions" do
    it "routes /sessions to sessions#index" do
      { :get => "/sessions" }.should route_to(
        :controller => "sessions",
        :action => "index"
      )
    end
  end
end
