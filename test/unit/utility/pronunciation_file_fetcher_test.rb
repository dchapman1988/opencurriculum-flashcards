require 'utility_helper'

describe Utility::PronunciationFileFetcher do
  it "can be initialized" do
    mock_fetcher = mock()
    Utility::PronunciationFileFetcher.new('word', mock_fetcher).must_be_kind_of Utility::PronunciationFileFetcher
  end

  it "fetches the word appropriately" do
    word = 'mother'
    mock_fetcher = mock()
    mock_fetcher.expects(:get_audio).with(word).returns([{ fileUrl: 'foo' }]).once

    utility = Utility::PronunciationFileFetcher.new(word, mock_fetcher)
    response = utility.execute!
  end
end
