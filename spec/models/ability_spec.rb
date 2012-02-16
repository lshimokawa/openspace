require 'spec_helper'
require 'cancan/matchers'

describe "User" do 
  describe "abilities" do 
    subject { ability }
    let(:ability) { Ability.new(user) }
    
    context "when has role admin" do 
      let(:user) { Factory.build(:user, :role => 'admin') } 
      it { should be_able_to(:manage, Session.new) } 
      it { should be_able_to(:manage, User.new) } 
    end
    context "when has role assistant" do 
      let(:user) { Factory.build(:user, :role => 'assistant') } 
      it { should be_able_to(:create, Session.new) } 
      it { should_not be_able_to(:update, Session.new) } 
      it { should_not be_able_to(:destroy, Session.new) } 
      it { should_not be_able_to(:manage, User.new) } 
      
      context "and creates a session" do 
        let(:user) { Factory.build(:user, :role => 'assistant') } 
        let(:session) { Factory.build(:session, :user => user) } 
        it { should be_able_to(:update, session) } 
        it { should be_able_to(:destroy, session) }
      end
    end
  end
end