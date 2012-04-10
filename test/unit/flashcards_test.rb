require 'test_helper'

describe Flashcards do
  it "is a module" do
    Flashcards.must_be_kind_of Module
  end

  it "specifies a version" do
    Flashcards.version.must_be_kind_of String
  end
end
