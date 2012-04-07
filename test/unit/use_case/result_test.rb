require 'test_helper'

describe UseCase::Result do
  it "must know whether it was successful or not" do
    use_case = UseCase::Result.new(success: true)
    use_case.successful?.must_equal true
  end
end
