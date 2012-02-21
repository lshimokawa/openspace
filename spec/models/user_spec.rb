require 'spec_helper'

describe User do
  subject { user }
  let(:user) { Factory.build(:user) } 
  
  context "should be valid" do 
    it { should be_valid } 
  end
  
  context "should be valid with valid roles" do 
    let(:user) { Factory.build(:user, role: 'admin') } 
    it { should be_valid } 
  end
   
  context "should not be valid with invalid roles" do 
    let(:user) { Factory.build(:user, role: 'XXX') } 
    it { should have(1).error_on(:role) } 
  end
  
end