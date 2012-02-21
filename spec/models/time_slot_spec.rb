require 'spec_helper'

describe TimeSlot do
  subject { time_slot }
  let(:time_slot) { Factory.build(:time_slot) }

  context "is valid" do 
    it { should be_valid } 
  end

end