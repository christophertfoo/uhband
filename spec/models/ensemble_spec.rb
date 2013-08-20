require 'spec_helper'

describe 'Ensemble' do
  
  let(:ensemble) { FactoryGirl.create(:ensemble) }
  
  subject { ensemble }
  
  describe 'members' do
    it { should respond_to :name }
    it { should respond_to :semester }
  end
  
  describe 'validations' do
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing name' do
      before { ensemble.name = "  " }
      it { should_not be_valid }
    end
    
    context 'missing semester' do
      before { ensemble.semester = " " }
      it { should_not be_valid }
    end
  end
end
