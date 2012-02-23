require 'spec_helper'

describe NavigationController do
  render_views
  
  it "should respond to '/about'" do
    get 'about'
    response.should be_success
  end
  
  it "should respond to'/openspace'" do
    get 'openspace'
    response.should be_success
  end
    
end

