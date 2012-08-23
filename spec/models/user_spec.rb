require 'spec_helper'

describe User do
  let(:user) { Factory.build(:user) }
  let(:user_admin) { Factory.build(:user).promote_to_admin }
  let(:event) { Factory.build(:event) }
  let(:session) { Factory.build(:session) }
  
  describe "validations" do 
    it "should be valid" do
      user.should be_valid
    end

    it "should not be valid" do
      Factory.build(:user, provider: '').should_not be_valid
      Factory.build(:user, uid: '').should_not be_valid
      Factory.build(:user, name: '').should_not be_valid
      Factory.build(:user, nickname: '').should_not be_valid
    end

    context "of role" do 
      it "should accept valid roles" do
        Factory.build(:user, role: 'admin').should be_valid
      end
      
      it "should reject invalid roles" do
        Factory.build(:user, role: 'XXX').should_not be_valid
      end
    end
  end

  describe "voting" do
    it "should start with 0 votes" do
      user.votes_count(event).should == 0
    end

    it "should vote and increment vote count in 1" do
      user.vote(event, session)
      user.votes_count(event).should == 1
    end

    it "should be able to vote 3 times" do
      3.times { user.vote(event, session) } 
      user.votes_count(event).should == 3
    end

    it "should not be able to vote more than 3 times if assistant" do
      3.times { user.vote(event, session) }   
      expect {
        user.vote(event, session)
      }.should raise_error
    end

    it "should be able to vote with no limit if admin" do
      10.times { user_admin.vote(event, session) }
      user_admin.votes_count(event).should == 10
    end
     
  end

  describe "roles" do
    it "should be assistant by default" do 
      user.assistant?.should == true
    end

    it "should be admin if promoted" do 
      user.promote_to_admin.admin?.should == true
    end
  end
  
end