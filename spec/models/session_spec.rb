require 'spec_helper'

describe Session do
  
  describe "validation" do 
    it "should be valid" do
      Factory.build(:session).should be_valid
    end
    
    it "should not be valid" do
      Factory.build(:session, title: '').should_not be_valid
      Factory.build(:session, proposed_by: '').should_not be_valid
      Factory.build(:session, status: 'XXX').should_not be_valid
      Factory.build(:session, session_type: 'XXX').should_not be_valid
    end

  end  
end