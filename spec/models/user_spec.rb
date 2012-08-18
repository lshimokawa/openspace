require 'spec_helper'

describe User do
  
  describe "validations" do 
    it "should be valid" do
      Factory.build(:user).should be_valid
    end

    it "should not be valid" do
      Factory.build(:user, provider: '').should_not be_valid
      Factory.build(:user, uid: "").should_not be_valid
      Factory.build(:user, name: "").should_not be_valid
      Factory.build(:user, nickname: "").should_not be_valid
    end

    context "of role" do 
      it "should accept valid roles" do
        Factory.build(:user, role: 'admin').should be_valid
      end
      
      it "should reject invalid roles" do
        Factory.build(:user, role: 'XXX').should_not be_valid
      end
    end

    it "should prevent mass assignment of role" do
      lambda { 
        User.create(role: 'admin')
      }.should raise_error
    end
  end
  
end