require 'spec_helper'

describe 'Student' do
  let(:student) { FactoryGirl.create(:student) }

  subject { student }

  describe "members" do
    it { should respond_to :first_name }
    it { should respond_to :last_name }
    it { should respond_to :id_num }

    it { should respond_to :memberships }
    it { should respond_to :sections }
    it { should respond_to :ensembles }
    it { should respond_to :entries }
    it { should respond_to :subordinates }
    it { should respond_to :superiors }
  end

  describe "validations" do

    context "valid fields" do
      it { should be_valid }
    end

    context "first_name not present" do
      before { student.first_name = " " }
      it { should_not be_valid }
    end

    context "last_name not present" do
      before { student.last_name = " " }
      it { should_not be_valid }
    end
    
    context "non-numeric id number" do
      before { student.id_num = "not a number" }
      it { should_not be_valid }
    end
    
    context "negative id number" do
      before { student.id_num = "-1" }
      it { should_not be_valid }
    end
    
    context "zero id number" do
      before { student.id_num = "0" }
      it { should_not be_valid }
    end
    
    context "missing id number" do
      before { student.id_num = nil }
      it { should be_valid }
    end
  end
end
