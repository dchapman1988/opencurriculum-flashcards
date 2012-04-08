require 'test_helper'

describe UseCase::Card::Create do
  describe "when executed" do
    before do
      params = {}
      card_obj = mock()
      card_obj.expects(:save).once
      card_class = mock()
      card_class.expects(:new).with(params).returns(card_obj).once
      @use_case = UseCase::Card::Create.new(params: params, card_class: card_class)
    end

    it "loads and saves a new instance of the card_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
