require 'test_helper'

describe Persistence::Deck do
  it "is a class" do
    Persistence::Deck.must_be_kind_of Class
  end

  it "is invalid without name" do
    Persistence::Deck.new({}).valid?.must_equal false
  end

  it "is valid with the appropriate attributes" do
    valid_attributes = {
      name: 'Vocabulary'
    }
    Persistence::Deck.new(valid_attributes).valid?.must_equal true
  end

  it "uses its name to represent itself as a string" do
    Persistence::Deck.new(name: 'foo').to_s.must_equal 'foo'
  end
end
