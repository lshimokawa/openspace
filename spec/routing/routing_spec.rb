require 'spec_helper'

describe "routing" do
  context "agenda" do
    it "routes /agenda to agendas#show" do
      { :get => "/agenda" }.should route_to(
        :controller => "agenda",
        :action => "show"
      )
    end
  end
  
  context "sessions" do
    it "routes /sessions to sessions#index" do
      { :get => "/sessions" }.should route_to(
        :controller => "sessions",
        :action => "index"
      )
    end
  end
end
