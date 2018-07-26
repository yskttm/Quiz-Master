require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { FactoryGirl.create(:question, contens: 'contens', answer:answer) }
  let(:answer) { 'one' }

  describe 'correct?' do
    subject { question.correct?(input_answer) }

    context 'string number is' do
      let(:input_answer) { 'one' }
      it 'correct' do
        is_expected.to be true
      end
    end

    context 'numric number is' do
      let(:input_answer) { '1' }
      it 'correct' do
        is_expected.to be true
      end
    end

    context 'ignore white space and hyphen' do
      let(:input_answer) { 'twenty-one' }
      let(:answer) { ' twenty one ' }
      it 'correct' do
        is_expected.to be true
      end
    end

    context 'wrong answer is' do
      let(:input_answer) { 'two' }
      it 'correct' do
        is_expected.to be false
      end
    end
  end
end
