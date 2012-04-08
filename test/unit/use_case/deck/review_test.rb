require 'use_case_helper'

describe UseCase::Deck::Review do
  describe "when executed" do
    before do
      get_use_case = mock()
      get_use_case_result = mock()
      @deck = mock()
      cards = mock()
      @card = mock()
      @answer = mock()
      get_use_case_result.expects(:data).returns({ deck: @deck }).once
      cards.expects(:first).returns(@card).once
      @deck.expects(:cards).returns(cards).once
      options = { id: 1, deck_class: {} }
      get_use_case.expects(:execute!).returns(get_use_case_result).once
      answer_class = mock()
      answer_class.expects(:new).with({ card: @card }).returns(@answer).once
      @use_case = UseCase::Deck::Review.new(get_use_case: get_use_case, answer_class: answer_class)
    end

    it "requests an object from deck_class by id" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      result = @use_case.execute!
      result.must_be_kind_of UseCase::Result
      result.data[:card].must_equal @card
      result.data[:deck].must_equal @deck
      result.data[:answer].must_equal @answer
    end
  end
end
