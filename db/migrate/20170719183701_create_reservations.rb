class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :guest, foreign_key: true
      t.integer :quantity
      t.datetime :check_in
      t.datetime :check_out
      t.text :comments

      t.timestamps
    end
  end
end
