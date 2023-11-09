# frozen_string_literal: true

class JokeComponent < ApplicationComponent
  attr_accessor :joke

  def initialize(joke: nil)
    @joke = joke
  end
end
