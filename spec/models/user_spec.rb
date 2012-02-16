require 'spec_helper'

describe User do
  subject { user }
  
  context "when has a valid role" do 
    let(:user) { Factory.build(:user, role: 'admin') } 
    it { should be_valid } 
  end
  
  context "when has an invalid role" do 
    let(:user) { Factory.build(:user, role: 'XXX') } 
    it { should have(1).error_on(:role) } 
  end
  
end