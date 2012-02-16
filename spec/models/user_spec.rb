require 'spec_helper'
require 'cancan/matchers'

describe Ability do 
  describe "Authorizations" do 
    context "User is an Admin" do 
      before(:each) do 
        @user = Factory.build(:user, :role => 'admin')
        @ability = Ability.new(@user)
      end
      describe "should allow management of users" do
        it "should allow management of users" do
          @ability.should be_able_to(:manage, User.new)
        end
      end
    end
  end
end


# describe "User" do
#   describe "abilities" do
#     subject { ability }
#     let (:ability) { Ability.new(user) }
#     
#     context "when is a guest" do
#       let (:user) { users(:guest) }
#       
#       it { should be_able_to(:manage, Session.new) }
#     end
#   end
# end