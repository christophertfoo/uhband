require 'spec_helper'

describe 'Note' do
  
  let(:note) { FactoryGirl.create(:note) }
  
  subject { note }
  
  describe 'members' do
    it { should respond_to :note }
    it { should respond_to :entry }
    it { should respond_to :student }
  end
  
  describe 'valdiations' do
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing note' do
      before { note.note = "    " }
      it { should_not be_valid }
    end
    
    context 'missing entry' do
      before { note.entry = nil }
      it { should_not be_valid }
    end
    
    context 'missing student' do
      before { note.student = nil }
      it { should_not be_valid  }
    end
  end
  
end
