require 'test_helper'

describe UseCase::Deck::List do
  describe "when executed" do
    before do
      id = 1
      deck_objs = mock()
      deck_class = mock()
      deck_class.expects(:all).returns(deck_objs).once
      @use_case = UseCase::Deck::List.new(id: id, deck_class: deck_class)
    end

    it "sends #all to deck_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
