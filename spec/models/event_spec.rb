require 'spec_helper'

describe Event do
  
  describe "validations" do
    it "should be valid" do
      Factory.build(:event).should be_valid
    end
    
    it "should not be valid" do 
      Factory.build(:event, name: '').should_not be_valid
    end
  end

end