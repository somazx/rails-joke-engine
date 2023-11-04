class JokesController < ApplicationController
  layout false

  def show
    respond_to do |format|
      format.turbo_stream do
        loading = false
        joke = JokeApi.get_random
        render ::JokeComponent.new(joke:, loading:)
      end

      format.html do
        render ::JokeComponent.new()
      end
    end
  end
end
