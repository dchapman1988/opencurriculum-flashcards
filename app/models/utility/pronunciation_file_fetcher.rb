module Utility
  class PronunciationFileFetcher
    def initialize(word, fetcher)
      @word = word
      @fetcher = fetcher
    end

    def execute!
      response = @fetcher.get_audio(@word)
      response.last["fileUrl"]
    end
  end
end
