require 'use_case_helper'

describe UseCase::Deck::Review do
  describe "when executed" do
    before do
      get_use_case = mock()
      get_use_case_result = mock()
      deck = mock()
      cards = mock()
      card = mock()
      get_use_case_result.expects(:data).returns({ deck: deck })
      cards.expects(:first).returns(card).once
      deck.expects(:cards).returns(cards).once
      options = { id: 1, deck_class: {} }
      get_use_case.expects(:execute!).returns(get_use_case_result).once
      @use_case = UseCase::Deck::Review.new(get_use_case: get_use_case)
    end

    it "requests an object from deck_class by id" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
