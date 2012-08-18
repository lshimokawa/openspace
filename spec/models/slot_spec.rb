require 'spec_helper'

describe Slot do
  
  describe "validations" do
    it "should be valid" do
      Factory.build(:slot).should be_valid
    end
    
    it "should not be valid" do
      Factory.build(:slot, agenda: nil).should_not be_valid
    end
  end
  
end