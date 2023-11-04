# frozen_string_literal: true

require "test_helper"

class JokeComponentTest < ViewComponent::TestCase
  def test_component_renders_joke_text
    joke_text = "Is this a joke?"
    render_inline JokeComponent.new(text: joke_text, loading: false)

    assert_text(joke_text)
    refute_selector("svg")
  end

  def test_component_renders_loading_svg
    render_inline JokeComponent.new(text: nil, loading: true)

    assert_selector("svg")
  end
end
