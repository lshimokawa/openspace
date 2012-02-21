require 'spec_helper'

describe TimeSlot do
  subject { time_slot }
  
  context "is valid" do 
    let(:time_slot) { 
      Factory.build(:time_slot, 
        event: Factory.build(:event), 
      ) 
    } 
    it { should be_valid } 
  end 
end