class CreateReservationRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :reservation_rooms do |t|
      t.references :reservation, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
