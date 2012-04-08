require 'use_case_helper'

describe UseCase::Deck::List do
  describe "when executed" do
    before do
      deck_objs = mock()
      deck_class = mock()
      deck_class.expects(:all).returns(deck_objs).once
      @use_case = UseCase::Deck::List.new(deck_class: deck_class)
    end

    it "sends #all to deck_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
