# frozen_string_literal: true

class JokeComponent < ViewComponent::Base
  def initialize(joke: nil, loading: true)
    @joke = joke
    @loading = loading
  end

  def loading?
    @loading
  end
end
