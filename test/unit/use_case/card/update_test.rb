require 'use_case_helper'

describe UseCase::Card::Update do
  describe "when executed" do
    before do
      id = 1
      params = {}
      card_obj = mock()
      card_obj.expects(:update_attributes).with(params).returns(true).once
      card_class = mock()
      card_class.expects(:find).with(id).returns(card_obj).once
      @use_case = UseCase::Card::Update.new(id: id, params: params, card_class: card_class)
    end

    it "loads and saves a new instance of the card_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
