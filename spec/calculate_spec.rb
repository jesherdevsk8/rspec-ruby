# frozen_string_literal: true

require 'Calculate'

RSpec.describe 'Calculate' do
  let(:calculate) { Calculate.new(2, 2) }

  context '#addition' do
    it 'sum numbers' do
      result = calculate.addition(6, 2)
      expect(calculate.addition(6, 2)).to eq(result)
    end
  end

  context '#subtraction' do
    it 'subtract numbers' do
      result = calculate.subtraction(100, 89)
      expect(calculate.subtraction(100, 89)).to eq(result)
    end

    it 'dont subtract number if num_a less then num_b' do
      expect(calculate.subtraction(10, 22)).to be_nil
    end
  end

  context '#multiplication' do
    it 'multiplicate numbers' do
      result = calculate.multiplication(4, 4)
      expect(calculate.multiplication(4, 4)).to eq(result)
    end
  end

  context '#division' do
    it 'divide numbers' do
      result = calculate.division(15, 2)
      expect(calculate.division(15, 2)).to eq(result)
    end

    it 'return null if num_b equal 0' do
      expect(calculate.division(8, 0)).to be_nil
    end

    it 'return 0 if num_a equal 0' do
      expect(calculate.division(0, 8)).to be(0)
    end
  end
end
