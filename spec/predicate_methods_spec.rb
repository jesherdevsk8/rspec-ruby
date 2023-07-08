# frozen_string_literal: true

RSpec.describe 'Predicate methods and predicate matchers' do
  let(:result_zero) { 0 }
  let(:result_even) { 16 / 4 }
  let(:result_odd) { 25 / 5 }
  let(:array) { [] }

  context 'Ruby macthers and Rspec matchers' do
    it 'can be tested with Ruby methods' do
      expect(result_zero.zero?).to eq(true)
      expect(result_even.even?).to eq(true)
      expect(result_odd.odd?).to eq(true)
      expect(array.empty?).not_to eq(false)
    end

    it 'can be tested with predicate matchers' do
      expect(result_zero).to be_zero
      expect(result_even).to be_even
      expect(result_odd).to be_odd
      expect(array).to be_empty
    end
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
