class CardDecorator < ApplicationDecorator
  decorates :card, class: PersistencePrefix::Card

  def front_content
    embed_plugins(card.front_content)
  end

  def back_content
    embed_plugins(card.back_content)
  end

  def embed_plugins string
    while string =~ /\[%=([^\]%].*)%\]/   # Matches [%= pronounce foo %]
      the_match         = Regexp.last_match
      keh_code          = $1
      module_output     = ""
      plugin_invocation = keh_code.strip
      method, *rest     = plugin_invocation.split(' ')
      rest = rest.join(' ')
      plugin_hash = Flashcards::PluginManager.instance.plugin_hash
      if plugin_hash.has_key?(method)
        module_output = plugin_hash[method].new(rest.strip).execute!
      end
      string[the_match.begin(0)...the_match.end(0)] = module_output
    end
    string
  end

  def to_s
    card.to_s
  end
end
