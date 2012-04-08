require 'use_case_helper'

describe UseCase::Deck::Get do
  describe "when executed" do
    before do
      id = 1
      deck_obj = mock()
      deck_class = mock()
      deck_class.expects(:find).with(id).returns(deck_obj).once
      @use_case = UseCase::Deck::Get.new(id: id, deck_class: deck_class)
    end

    it "requests an object from deck_class by id" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
