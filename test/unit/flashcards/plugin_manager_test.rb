require 'test_helper'

describe Flashcards::PluginManager do
  before do
    # Since I'm testing a singleton, I'm actually going to be testng a clone of the
    # class in each step.  Further explanation here:
    # http://www.plainlystated.com/2011/08/testing-singletons-in-ruby/
    Flashcards::PluginManager.instance_variable_set("@__instance__", nil)
    @plugin_manager_class = Flashcards::PluginManager.clone
  end

  it "is a singleton" do
    @plugin_manager_class.instance.must_equal @plugin_manager_class.instance
  end

  it "has an array of plugins" do
    @plugin_manager_class.instance.plugins.must_be_kind_of Array
  end

  it "can add a plugin to its plugin array" do
    plugin = mock()
    @plugin_manager_class.instance.add_plugin plugin
    @plugin_manager_class.instance.plugins.must_equal [plugin]
  end

  it "outputs a plugin_hash" do
    plugin1 = mock('plugin1', method_name: 'p1', klass: 'k1')
    plugin2 = mock('plugin2', method_name: 'p2', klass: 'k2')
    @plugin_manager_class.instance.add_plugin plugin1
    @plugin_manager_class.instance.add_plugin plugin2
    expected = { "p1" => "k1", "p2" => "k2" }
    @plugin_manager_class.instance.plugin_hash.must_equal expected
  end
end
