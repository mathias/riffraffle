class TicketsController < ApplicationController
  expose(:tickets)
  expose(:ticket)

  def index
    render json: tickets
  end
end
