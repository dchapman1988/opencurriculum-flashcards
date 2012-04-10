require 'rails_helper'

describe PersistencePrefix::Card do
  it "is a class" do
    PersistencePrefix::Card.must_be_kind_of Class
  end

  it "is invalid without name" do
    PersistencePrefix::Card.new({}).valid?.must_equal false
  end

  it "is valid with the appropriate attributes" do
    valid_attributes = {
      name: 'foo',
      front_content: 'foo?',
      back_content: '*bar*',
      deck_id: 1
    }
    PersistencePrefix::Card.new(valid_attributes).valid?.must_equal true
  end

  it "uses its name to represent itself as a string" do
    PersistencePrefix::Card.new(name: 'foo').to_s.must_equal 'foo'
  end
end
