require 'spec_helper'

describe 'Infraction' do
  
  let(:infraction) { FactoryGirl.create(:infraction) }
  
  subject { infraction }
  
  describe 'members' do
    it { should respond_to :name }
  end
  
  describe 'validations' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing name' do
      before { infraction.name = " " }
      it { should_not be_valid }
    end
  end
end
