class JokesController < ApplicationController

  def show
    respond_to do |format|
      format.html do
        render ::JokeComponent.new()
      end

      format.turbo_stream do
        joke = JokeApi.get_random
        loading = false
        @joke_component = ::JokeComponent.new(joke:, loading:)
      end
    end
  end
end
