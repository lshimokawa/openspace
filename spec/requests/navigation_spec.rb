require 'spec_helper'

describe "Navigation" do

  it "GET root" do
    get root_path
    response.status.should be(200)
  end
  
  it "GET /about" do
    get about_path
    response.status.should be(200)
  end
  
  it "GET /openspace" do
    get openspace_path
    response.status.should be(200)
  end

end
