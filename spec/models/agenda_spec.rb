require 'spec_helper'

describe Agenda do
  
  describe "validations" do
    it "should be valid" do
      Factory.build(:agenda).should be_valid
    end
    
    it "should not be valid" do 
      Factory.build(:agenda, title: '').should_not be_valid
      Factory.build(:agenda, starts: '').should_not be_valid
      Factory.build(:agenda, ends: '').should_not be_valid
      Factory.build(:agenda, event: nil).should_not be_valid
    end
  end
  
end