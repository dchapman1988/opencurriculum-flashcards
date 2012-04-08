require 'use_case_helper'

describe UseCase::Card::Create do
  describe "when executed" do
    before do
      card = {}
      answer_obj = mock('answer')
      answer_obj.expects(:save).once
      answer_class = mock('answerclass')
      answer_class.expects(:new).with({card: card, correct: true}).returns(answer_obj).once
      @use_case = UseCase::Answer::Create.new(card: card, correct: true, answer_class: answer_class)
    end

    it "loads and saves a new instance of the card_class" do
      @use_case.execute!
    end

    it "returns a UseCase::Result" do
      @use_case.execute!.must_be_kind_of UseCase::Result
    end
  end
end
