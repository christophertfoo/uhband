require 'spec_helper'

describe 'Event' do

  let(:event) { FactoryGirl.create(:event) }

  subject { event }

  describe 'members' do
    it { should respond_to :name }
    it { should respond_to :time }
    it { should respond_to :event_type }
  end

  describe 'validations' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing name' do
      before { event.name = "   " }
      it { should_not be_valid }
    end
    
    context 'missing time' do
      before { event.time = nil }
      it { should_not be_valid }
    end
    
    context 'non-time for time' do
      before { event.time = 'blahblah' }
      it { should_not be_valid }
    end
    
    context 'missing event_type' do
      before { event.event_type = nil }
      it { should_not be_valid }
    end
    
  end

end
