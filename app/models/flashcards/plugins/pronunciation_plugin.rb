require 'action_view'

module Flashcards
  module Plugins
    class PronunciationPlugin < ActionView::Base
      include ::Sprockets::Helpers::RailsHelper
      include ::Sprockets::Helpers::IsolatedHelper
      include ::ActionView::Helpers::TagHelper
      include ::ActionView::Helpers::AssetTagHelper
      include ::ActionView::Helpers::UrlHelper

      def initialize(word)
        @word = word
      end

      def execute!
        audio_file = ::Utility::PronunciationFileFetcher.new(@word, Wordnik.word).execute!
        audio_tag = tag(:audio, src: audio_file, preload: 'auto')
        image = image_tag('vendor/wordnik/wordnik_badge_a2.png')
        attribution_tag = link_to(image, "http://www.wordnik.com/word/#{@word}")
        attribution_tag + audio_tag
      end
    end
  end
end
