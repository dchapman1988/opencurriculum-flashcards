require 'rails_helper'

describe PersistencePrefix::Deck do
  it "is a class" do
    PersistencePrefix::Deck.must_be_kind_of Class
  end

  it "is invalid without name" do
    PersistencePrefix::Deck.new({}).valid?.must_equal false
  end

  it "is valid with the appropriate attributes" do
    valid_attributes = {
      name: 'Vocabulary'
    }
    PersistencePrefix::Deck.new(valid_attributes).valid?.must_equal true
  end

  it "uses its name to represent itself as a string" do
    PersistencePrefix::Deck.new(name: 'foo').to_s.must_equal 'foo'
  end
end
