# Load plugins
require Rails.root.join("app", "models", "flashcards", "plugins", "pronunciation_plugin")

# Load them as plugins
Flashcards::Plugin.new('pronounce', Flashcards::Plugins::PronunciationPlugin, Flashcards::PluginManager.instance)
