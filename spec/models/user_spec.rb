require 'spec_helper'

describe User do
  subject { user }
  
  context "is valid" do 
    let(:user) { Factory.build(:user) } 
    it { should be_valid } 
  end
  
  context "has a valid role" do 
    let(:user) { Factory.build(:user, role: 'admin') } 
    it { should be_valid } 
  end
   
  context "has an invalid role" do 
    let(:user) { Factory.build(:user, role: 'XXX') } 
    it { should have(1).error_on(:role) } 
  end
  
end