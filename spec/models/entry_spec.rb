require 'spec_helper'

describe 'Entry' do

  let(:entry) { FactoryGirl.create(:entry) }

  subject { entry }

  describe 'members' do
    it { should respond_to :membership }
    it { should respond_to :event }
    it { should respond_to :infraction }
  end

  describe 'validations' do

    context 'valid fields' do
      it { should be_valid }
    end

    context 'missing membership' do
      before { entry.membership = nil }
      it { should_not be_valid }
    end
    
    context 'missing event' do
      before { entry.event = nil }
      it { should_not be_valid }
    end
    
    context 'missing infraction' do
      before { entry.infraction = nil }
      it { should_not be_valid }
    end

  end

end
