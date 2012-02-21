require 'spec_helper'

describe NavigationController do
  
  it "should have an About page at '/about'" do
    get 'about'
    response.should be_success
  end
    
end

