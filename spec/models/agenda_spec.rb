require 'spec_helper'

describe Agenda do
  
  describe "validations" do
    it "should be valid" do
      Factory.build(:agenda).should be_valid
    end
    
    context "of title" do 
      it "requires presence" do 
        Factory.build(:agenda, title: '').should_not be_valid
      end
    end
    
    context "of starts" do 
      it "requires presence" do 
        Factory.build(:agenda, starts: '').should_not be_valid
      end
    end
    
    context "of ends" do 
      it "requires presence" do 
        Factory.build(:agenda, ends: '').should_not be_valid
      end
      
      it "can't be before start time" do
        pending "not implemented"
      end
    end
  end
  
end
