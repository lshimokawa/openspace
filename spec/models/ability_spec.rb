require 'spec_helper'
require 'cancan/matchers'

describe User do
  describe "authorizations" do 
    subject { ability }
    let(:ability) { Ability.new(user) }
    
    context "when role is admin" do 
      let(:user) { Factory.create(:user, :role => 'admin') } 
      it { should be_able_to(:manage, Session.new) } 
      it { should be_able_to(:manage, User.new) } 
    end
    
    context "when role is assistant" do 
      let(:user) { Factory.create(:user, :role => 'assistant') } 
      let(:session) { Factory.create(:session) } 
      it { should be_able_to(:create, Session.new) } 
      it { should_not be_able_to(:update, session) } 
      it { should_not be_able_to(:destroy, session) } 
      it { should_not be_able_to(:manage, User.new) } 
      
      context "and creates a session" do 
        let(:session) { Factory.create(:session, :user => user) } 
        it { should be_able_to(:update, session) } 
        it { should be_able_to(:destroy, session) }
      end
    end
  end
end