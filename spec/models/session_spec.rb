require 'spec_helper'

describe Session do
  subject { session }
  
  describe "validation" do 
    it "should be valid" do
      Factory.build(:session).should be_valid
    end
    
    context "of title" do 
      it "requires presence" do
        Factory.build(:session, title: '').should_not be_valid
      end
    end
  
    context "of proposed_by" do 
      it "requires presence" do
        Factory.build(:session, proposed_by: '').should_not be_valid
      end
    end
    
    context "of status" do 
      it "rejects invalid status" do
        Factory.build(:session, status: 'XXX').should_not be_valid
      end
    end
  
    context "of session_type" do 
      it "rejects invalid session_type" do
        Factory.build(:session, session_type: 'XXX').should_not be_valid
      end    
    end  
  end  
end