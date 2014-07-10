require 'csv'

class ImportsController < ApplicationController
  before_filter :authenticate_admin_user!
  layout false

  def new
  end

  def create
    if params[:csv_file]
      Ticket.destroy_all

      @file = IO.read(params[:csv_file].path)
      @csv_parsed = CSV.parse(@file)

      @csv_parsed.each do |row|
        Ticket.create(name: row[2], count: row[7].gsub(/^[$]/, '').to_i)
      end

      redirect_to admin_tickets_path
    end
  end
end
