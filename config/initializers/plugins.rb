Rails.application.config.to_prepare do
  Flashcards::Plugin.new('pronounce', Flashcards::Plugins::PronunciationPlugin, Flashcards::PluginManager.instance)
end
