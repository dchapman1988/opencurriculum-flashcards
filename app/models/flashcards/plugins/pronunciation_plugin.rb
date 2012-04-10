require 'action_view'

module Flashcards
  module Plugins
    class PronunciationPlugin
      include ActionView::Helpers::TagHelper

      def initialize(word)
        @word = word
      end

      def execute!
        audio_file = Utility::PronunciationFileFetcher.new(@word, Wordnik.word).execute!
        tag(:audio, src: audio_file, preload: 'auto')
      end
    end
  end
end
