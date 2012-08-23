require 'spec_helper'
require 'cancan/matchers'

describe User do
  describe "authorizations" do 
    subject { ability }
    let(:ability) { Ability.new(user) }
    
    context "when role is admin" do 
      let(:user) { Factory.create(:user, :role => 'admin') } 
      it { should be_able_to(:manage, User.new) } 
      it { should be_able_to(:manage, Event.new) } 
      it { should be_able_to(:manage, Session.new) } 
    end

    context "when role is assistant" do 
      let(:user) { Factory.create(:user, :role => 'assistant') }
    end
  end
end