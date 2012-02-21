require 'spec_helper'

describe Event do
  subject { event }
  let(:event) { Factory.build(:event) }

  context "is valid" do 
    it { should be_valid } 
  end

end