class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :dirt_id

      t.timestamps
    end
  end
end
