class TicketsController < ApplicationController
  before_filter :authenticate_admin_user!

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
