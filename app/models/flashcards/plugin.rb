module Flashcards
  class Plugin
    # Flashcard::Plugin is a class that can be instantiated in order
    # to create a plugin that may be used in the content sections.
    #
    # @param [Symbol] method_name
    #   The method name to be used in the CMS to invoke this plugin
    #
    # @param [Class] klass
    #   The class that defines the code to be run when this plugin is
    #   executed.  Will be executed in this manner:
    #
    #      klass.new(args).execute!
    #
    # @return [Flashcard::Plugin]
    #   the Flashcard::Plugin instance
    #
    # @example
    #   Flashcard::Plugin.new(:pronounce, Flashcard::Plugin::Pronounce)
    #   # => <Flashcard::Plugin>
    #
    # @api public
    def initialize(method_name, klass, plugin_manager)
      @method_name = method_name
      @klass = klass
      plugin_manager.add_plugin(self)
    end

    # @api public
    def method_name
      @method_name
    end

    # @api public
    def klass
      @klass
    end
  end
end
