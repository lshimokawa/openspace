require 'spec_helper'

describe User do
  subject { user }
  let(:user) { Factory.build(:user) } 
  it { should be_valid } 
  
  describe "validations" do 
    context "of role" do 
      it "should accept valid roles" do
        Factory.build(:user, role: 'admin').should be_valid
      end
      
      it "should reject invalid roles" do
        Factory.build(:user, role: 'XXX').should_not be_valid
      end
    end
  end
  
end