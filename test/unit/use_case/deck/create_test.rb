require 'use_case_helper'

describe UseCase::Deck::Create do
  describe "when executed" do
    before do
      params = {}
      deck_obj = mock()
      deck_obj.expects(:save).once
      deck_class = mock()
      deck_class.expects(:new).with(params).returns(deck_obj).once
      @use_case = UseCase::Deck::Create.new(params: params, deck_class: deck_class)
    end

    it "loads and saves a new instance of the deck_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
