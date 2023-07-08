# frozen_string_literal: true

RSpec.describe 'Alternative to {}.empty?' do
  it 'should be empty' do
    hash = {}
    expect(hash).to be_empty
  end
end

RSpec.describe 'validates that every element in array is even' do
  it 'should be even' do
    array = [10, 20, 30]
    expect(array).to all(be_even)
  end
end

RSpec.describe 'validates that every element in array [0, 1, 2] is greater than or equal to 0' do
  it 'should be greater than or equal to 0' do
    array = [0, 1, 2]
    # array.each{|a| puts (a >= 0)}
    expect(array).to all(be >= 0)
  end
end

RSpec.describe 'Which of the values below are truthy and which are falsy?' do
  it 'can test for truthiness and falsyness' do
    expect('hello').to be_truthy
    expect(false).to be_falsy
    expect(0).to be_truthy
    expect(-10).to be_truthy
    expect([]).to be_truthy
    expect(99.99).to be_truthy
    expect(:hello).to be_truthy
    expect(true).to be_truthy
    expect(nil).to be_falsy
    expect([1, 2, 3]).to be_truthy
  end
end
