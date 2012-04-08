require 'rails_helper'

describe Persistence::Card do
  it "is a class" do
    Persistence::Card.must_be_kind_of Class
  end

  it "is invalid without name" do
    Persistence::Card.new({}).valid?.must_equal false
  end

  it "is valid with the appropriate attributes" do
    valid_attributes = {
      name: 'foo',
      front_content: 'foo?',
      back_content: '*bar*',
      deck_id: 1
    }
    Persistence::Card.new(valid_attributes).valid?.must_equal true
  end

  it "uses its name to represent itself as a string" do
    Persistence::Card.new(name: 'foo').to_s.must_equal 'foo'
  end
end
