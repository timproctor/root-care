class CreateDirts < ActiveRecord::Migration[5.0]
  def change
    create_table :dirts do |t|
      t.string :name
      t.string :start_time
      t.string :end_time
      t.string :distance

      t.timestamps
    end
  end
end
