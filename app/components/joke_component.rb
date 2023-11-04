# frozen_string_literal: true

class JokeComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end

end
