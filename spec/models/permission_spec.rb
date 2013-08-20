require 'spec_helper'

describe 'Permissions' do
  
  let(:superior) { FactoryGirl.create(:student) }
  let(:subordinate) { FactoryGirl.create(:student) }
  let(:edit) { FactoryGirl.create(:permission, superior: superior, subordinate: subordinate, edit: true) }

  subject { edit }  
  
  describe 'members' do
    it { should respond_to :superior }
    it { should respond_to :subordinate }
    it { should respond_to :edit }
    
    describe 'edit defaults to false' do
      let(:default_edit) do
        Permission.create(superior: superior, subordinate: subordinate)
      end
      
      specify { expect(default_edit.edit).to be_false }
    end
  end
  
  describe 'validations' do
    
    context 'valid fields' do
      it { should be_valid }
    end
    
    context 'missing superior' do
      before { edit.superior = nil }
      it { should_not be_valid }
    end
    
    context 'missing subordinate' do
      before { edit.subordinate = nil }
      it { should_not be_valid }
    end  
  end  
end
