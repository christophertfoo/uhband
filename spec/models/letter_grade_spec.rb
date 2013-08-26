require 'spec_helper'

describe 'LetterGrade' do

  let(:letter_grade) { FactoryGirl.create(:letter_grade) }

  subject { letter_grade }

  describe 'members' do
    it { should respond_to :grade }
    it { should respond_to :min_points }
    it { should respond_to :max_points }
    it { should respond_to :ensemble }
  end

  describe 'validations' do

    context 'valid fields' do
      it { should be_valid }
    end

    context 'missing grade' do
      before { letter_grade.grade = '   ' }
      it { should_not be_valid }
    end

    describe 'min points' do
      context 'missing' do
        before { letter_grade.min_points = '  ' }
        it { should_not be_valid }
      end

      context 'non-number' do
        before { letter_grade.min_points = 'not a number' }
        it { should_not be_valid }
      end

      context 'non-integer' do
        before { letter_grade.min_points = '1.1' }
        it { should_not be_valid }
      end

      context 'negative' do
        before { letter_grade.min_points = '-1' }
        it { should_not be_valid }
      end

      context 'zero' do
        before { letter_grade.min_points = '0' }
        it { should be_valid }
      end
    end

    describe 'max points' do
      context 'missing' do
        before { letter_grade.max_points = nil }
        it { should be_valid }
      end
      
      context 'non-number' do
        before { letter_grade.max_points = 'not a number' }
        it { should_not be_valid }
      end
      
      context 'non-integer' do
        before do 
          letter_grade.min_points = '0'
          letter_grade.max_points = '1.1'
        end
        it { should_not be_valid}
      end
      
      context 'less than min' do
        before do
          letter_grade.min_points = '2'
          letter_grade.max_points = '1'
        end
        it { should_not be_valid }
      end
      
      context 'same as min' do
        before do
          letter_grade.min_points = '1'
          letter_grade.max_points = '2'
        end
        it { should be_valid  }
      end
    end

  end

end
