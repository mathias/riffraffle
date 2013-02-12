class MakeTicketWonDefaultToFalse < ActiveRecord::Migration
  def change
    change_column_default(:tickets, :won, false)
  end
end
