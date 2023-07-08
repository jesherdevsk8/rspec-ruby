# frozen_string_literal: true

RSpec.describe Hash do
  it 'should start off empty and pass value to hash' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some Value'
    puts subject[:some_key]
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
  end
end
