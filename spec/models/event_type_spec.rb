require 'spec_helper'

describe 'EventType' do
  
  let(:event_type) { FactoryGirl.create(:event_type) }
  
  subject { event_type }
  
  describe 'members' do
    it { should respond_to :name }
    it { should respond_to :ensemble }
    it { should respond_to :events }
    it { should respond_to :rules }
  end
  
  
  describe 'validations' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing name' do
      before { event_type.name = "   " }
      it { should_not be_valid }
    end
    
    context 'missing ensemble' do
      before { event_type.ensemble = nil }
      it { should_not be_valid }
    end
    
  end
  
end
