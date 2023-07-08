## Learning Testing Ruby with RSpec

## RSpec Comparison Macthers
- The eq matcher checks for ( **value** )
- The eql matcher checks for ( **value and type** )
- The equal matcher checks for ( **object identity** )
- The be matcher is the same as which matcher? ( **equal** )

### _Examples_
```ruby
# Given the code below, which matchers need to be provided to result in a passing spec?
RSpec.describe 'fun with hashes' do
  let(:my_hash) { { a: 1, b: 2} }
  let(:your_hash) { { a: 1, b: 2 }}
  let(:some_hash) { my_hash }
 
  it 'is a test of your knowledge' do
    expect(my_hash).to eq(your_hash)
    expect(my_hash).to equal(some_hash)
  end
end

# Given the code below, which matchers need to be provided to result in a passing spec?
RSpec.describe 'comparison matchers' do
  let(:num) { 10 }

  it 'is a test of your knowledge' do
    expect(num).to be >= 10 # should be egual or greater
    expect(num).to be < 15 # should be less than num
    expect(num).to be <= 11 # should be less than num or equal
    expect(num).to be > 9 # should be greater than num
  end
end

# Not matcher
RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(10)
    expect('Hello').not_to eq('hello')
    expect([1, 2]).not_to eq([1, 2, 3])
  end
end
```