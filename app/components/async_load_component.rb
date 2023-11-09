# frozen_string_literal: true

class AsyncLoadComponent < ApplicationComponent
  attr_accessor :src, :frame_id

  def initialize(src:, frame_id:)
    @src = src
    @frame_id = frame_id
  end
end
