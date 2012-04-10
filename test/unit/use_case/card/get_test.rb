require 'rails_helper'

describe UseCase::Card::Get do
  describe "when executed" do
    before do
      id = 1
      card_obj = mock()
      card_class = mock()
      card_class.expects(:find).with(id).returns(card_obj).once
      @use_case = UseCase::Card::Get.new(id: id, card_class: card_class)
    end

    it "requests an object from card_class by id" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
