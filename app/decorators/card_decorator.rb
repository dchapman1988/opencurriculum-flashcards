class CardDecorator < ApplicationDecorator
  decorates :card, class: Persistence::Card

  def front_content
    embed_plugins(card.front_content)
  end

  def back_content
    embed_plugins(card.back_content)
  end

  def embed_plugins string
    while string =~ /\[%=([^\]%].*)%\]/   # Matches [%= pronounce foo %]
      the_match = Regexp.last_match
      keh_code = $1
      module_output = ""
      case keh_code.strip
      when /^pronounce(.*)/
        module_output = send(:pronounce, $1.strip)
      end
      string[the_match.begin(0)...the_match.end(0)] = module_output
    end
    string
  end

  def pronounce(word)
    audio_file = Utility::PronunciationFileFetcher.new(word, Wordnik.word).execute!
    h.tag(:audio, src: audio_file, preload: 'auto')
  end

  def to_s
    card.to_s
  end
end
