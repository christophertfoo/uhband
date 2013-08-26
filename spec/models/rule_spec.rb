require 'spec_helper'

describe 'Rule' do
  
  let(:rule) { FactoryGirl.create(:rule) }
  
  subject { rule }
  
  describe 'members' do
    it { should respond_to :point_value }
    it { should respond_to :event_type }
    it { should respond_to :infraction }
  end
  
  describe 'validations' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    describe 'point value' do
      context 'missing' do
        before { rule.point_value = "  " }
        it { should_not be_valid }
      end
      
      context 'non-number' do
        before { rule.point_value = "not a number" }
        it { should_not be_valid }
      end
      
      context 'negative number' do
        before { rule.point_value = "-1" }
        it { should be_valid }
      end
    end
    
    context 'missing event_type' do
      before { rule.point_value = nil }
      it { should_not be_valid }
    end
    
    context 'missing infraction' do
      before { rule.infraction = nil }
      it { should_not be_valid }
    end
    
  end
end