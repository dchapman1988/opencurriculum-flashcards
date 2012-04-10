require 'test_helper'

describe Flashcards::Plugin do
  before do
    @plugin_manager = mock()
    @plugin_manager.expects(:add_plugin).once
  end
  it "adds itself to the plugin_manager on instantiation" do
    plugin_class = mock()
    Flashcards::Plugin.new('method_name', plugin_class, @plugin_manager)
  end

  it "responds to #method_name" do
    p = Flashcards::Plugin.new('method_name', nil, @plugin_manager)
    p.method_name.must_equal 'method_name'
  end

  it "responds to #klass" do
    p = Flashcards::Plugin.new(nil, Object, @plugin_manager)
    p.klass.must_equal Object
  end
end
