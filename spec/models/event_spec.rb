require 'spec_helper'

describe Event do
  subject { event }
  let(:event) { Factory.build(:event) }
  it { should be_valid } 

end