class TicketsController < ApplicationController
  expose(:tickets)
  expose(:ticket)

  def index
    render json: tickets
  end

  def update
    if ticket.save
      render json: ticket
    else
      render json: { errors: ticket.errors }, status: 422
    end
  end
end
