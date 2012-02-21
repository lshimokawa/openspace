require 'spec_helper'

describe TimeSlot do
  subject { time_slot }
  let(:time_slot) { Factory.build(:time_slot) }
  it { should be_valid } 

end