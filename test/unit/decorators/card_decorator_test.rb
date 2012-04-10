require 'rails_helper'

describe CardDecorator do
  it "handles plugins" do
    card = mock()
    pronounce_class = mock()
    card.expects(:front_content).returns(
      <<-EOF
        hello, world.
        [%= pronounce foo %]
        end
      EOF
    )
    decorator = CardDecorator.new(card)
    pronounce_class.expects(:new).with('foo').returns(pronounce_class).once
    pronounce_class.expects(:execute!).returns('bar').once
    fake_hash = { 'pronounce' => pronounce_class }
    Flashcards::PluginManager.instance.expects(:plugin_hash).returns(fake_hash).once
    decorator.front_content
  end
end
