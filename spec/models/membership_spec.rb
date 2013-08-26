require 'spec_helper'

describe 'Membership' do
  
  let(:membership) { FactoryGirl.create(:membership) }
  
  subject { membership }
  
  describe 'members' do
    it { should respond_to :student }
    it { should respond_to :section }
  end
  
  describe 'validation' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing student' do
      before { membership.student = nil }
      it { should_not be_valid }
    end
    
    context 'missing section' do
      before { membership.section = nil }
      it { should_not be_valid }
    end
        
  end
end
