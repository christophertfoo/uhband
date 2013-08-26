require 'spec_helper'

describe 'Section' do
  
  let(:section) { FactoryGirl.create(:section) }
  
  subject { section }
  
  describe 'members' do
    it { should respond_to :name }
    it { should respond_to :ensemble }
    it { should respond_to :memberships }
    it { should respond_to :students }
  end
  
  describe 'validations' do
    describe 'valid fields' do
      it { should be_valid }
    end
    
    describe 'missing name' do
      before { section.name = "   " }
      it { should_not be_valid }
    end
    
    describe 'missing ensemble' do
      before { section.ensemble = nil }
      it { should_not be_valid }
    end
  end
  
end
