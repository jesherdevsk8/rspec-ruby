# frozen_string_literal: true

RSpec.describe Array do
  subject { [1, 2, 3] }

  it 'returns size of array' do
    expect(subject.size).to eq(3)
  end

  it 'should be able to add items' do
    subject.push('value')
    expect(subject.size).to eq(4)
  end
end
