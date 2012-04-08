require 'test_helper'

describe UseCase::Card::List do
  describe "when executed" do
    before do
      deck_id = 1
      card_objs = mock()
      card_class = mock()
      card_class.expects(:all).with(conditions: { deck_id: deck_id }).returns(card_objs).once
      @use_case = UseCase::Card::List.new(deck_id: deck_id, card_class: card_class)
    end

    it "sends #all to card_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
