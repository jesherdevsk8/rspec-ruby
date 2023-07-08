# frozen_string_literal: true

# Given the code below, which matchers need to be provided to result in a passing spec?

RSpec.describe 'comparison matchers' do
  let(:num) { 10 }

  it 'is a test of your knowledge' do
    expect(num).to be >= 10 # should be egual or greater
    expect(num).to be < 15 # should be less than num
    expect(num).to be <= 11 # should be less than num
    expect(num).to be > 9 # should be greater than num
  end
end
