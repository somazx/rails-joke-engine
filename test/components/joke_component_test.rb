# frozen_string_literal: true

require "test_helper"

class JokeComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    joke_text = "Is this a joke?"
    render_inline JokeComponent.new(text: joke_text)

    assert_text(joke_text)
  end
end
