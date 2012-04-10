module Flashcards
  class PluginManager
    def self.instance
      @__instance__ ||= new
    end

    def initialize
      @plugins = []
    end

    def plugins
      @plugins
    end

    def add_plugin(plugin)
      @plugins << plugin
    end

    # Outputs a hash mapping plugin names to their corresponding classes
    def plugin_hash
      h = {}
      plugins.each{|p| h[p.method_name] = p.klass }
      h
    end

    def self.load_all
      Flashcards::Plugin.new('pronounce', Flashcards::Plugins::PronunciationPlugin, Flashcards::PluginManager.instance)
    end
  end
end
