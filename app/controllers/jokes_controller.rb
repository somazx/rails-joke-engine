class JokesController < ApplicationController

  def show
    respond_to do |format|
      format.html do
        render ::AsyncLoadComponent.new(
          src: joke_path(format: :turbo_stream),
          frame_id: :joke__component
        )
      end

      format.turbo_stream do
        joke = JokeApi.get_random
        @joke_component = ::JokeComponent.new(joke:)
      end
    end
  end
end
