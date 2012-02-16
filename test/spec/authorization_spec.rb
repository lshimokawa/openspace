require 'cancan/matchers'

describe "User" do
user = users(:guest)
ability = Ability.new(user)
ability.should be_able_to(:manage, Session.new)
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