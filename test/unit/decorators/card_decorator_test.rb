require 'rails_helper'

describe CardDecorator do
  it "handles plugins" do
    card = mock()
    card.expects(:front_content).returns(
      <<-EOF
        hello, world.
        [%= pronounce foo %]
        end
      EOF
    )
    decorator = CardDecorator.new(card)
    decorator.expects(:pronounce).with('foo').returns('bar').once
    decorator.front_content
  end
end
