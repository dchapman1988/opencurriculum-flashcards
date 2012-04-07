require 'test_helper'

describe UseCase::Deck::New do
  describe "when executed" do
    before do
      params = {}
      deck_obj = mock()
      deck_class = mock()
      deck_class.expects(:new).with(params).returns(deck_obj).once
      @use_case = UseCase::Deck::New.new(params: params, deck_class: deck_class)
    end

    it "loads a new instance of the deck_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
