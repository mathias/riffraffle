class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :count
      t.boolean :won

      t.timestamps
    end
  end
end
