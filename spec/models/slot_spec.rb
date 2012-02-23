require 'spec_helper'

describe Slot do
  
  describe "validations" do
    it "should be valid" do
      Factory.build(:slot).should be_valid
    end
    
    it "session is optional" do
      Factory.build(:slot, session: nil).should be_valid 
    end
  end
  
end
