class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :capacity

      t.timestamps
    end
  end
end