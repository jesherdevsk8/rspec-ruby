# frozen_string_literal: true

class User
  attr_accessor :name, :email

  def initialize(name:, email:)
    @name = name
    @email = email
  end
end

RSpec.describe User, type: :model do
  it 'builds a list of users without using FactoryBot' do
    users = [
      User.new(name: 'John Doe', email: 'john@example.com'),
      User.new(name: 'Jane Smith', email: 'jane@example.com'),
      User.new(name: 'Bob Johnson', email: 'bob@example.com')
    ]
    expect(users.length).to eq(3)
    expect(users.first).to be_a(User)
  end

  # create_list and build_list are utility methods provided by FactoryBot (previously known as FactoryGirl)
  # for generating multiple instances of a model with predefined attributes. create_list creates the objects
  # and persists them to the database, while build_list only builds the objects in memory without saving them

  ## The following examples goes on if failure, beacause a hasn't factory_bot installed

  it 'creates a list of users' do
    users = create_list(:user, 5)
    expect(users.length).to eq(5)
    expect(users.first).to be_a(User)
  end

  it 'builds a list of users' do
    users = build_list(:user, 3)
    expect(users.length).to eq(3)
    expect(users.first).to be_a(User)
    expect(users.first).not_to be_persisted
  end

end
