require 'test_helper'

describe UseCase::Result do
  it "knows whether it was successful or not" do
    use_case = UseCase::Result.new(success: true)
    use_case.successful?.must_equal true
  end

  it "provides access to its data" do
    use_case = UseCase::Result.new(data: 'foo')
    use_case.data.must_equal 'foo'
  end
end
