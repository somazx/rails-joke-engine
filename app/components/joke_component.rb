# frozen_string_literal: true

class JokeComponent < ApplicationComponent
  attr_accessor :joke, :loading

  def initialize(joke: nil, loading: true)
    @joke = joke
    @loading = loading
  end

  def loading?
    @loading
  end
end
