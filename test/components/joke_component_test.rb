# frozen_string_literal: true

require "test_helper"

class JokeComponentTest < ViewComponent::TestCase
  def joke
    Joke.new(type: "Test Joke", setup: "Knock Knock", punchline: "You!", id: :foo)
  end

  def test_component_renders_joke_text
    render_inline JokeComponent.new(joke:)

    assert_text(joke.setup)
  end
end
