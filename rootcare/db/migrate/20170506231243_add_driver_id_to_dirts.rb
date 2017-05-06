class AddDriverIdToDirts < ActiveRecord::Migration[5.0]
  def change
    add_column :dirts, :driver_id, :integer
  end
end
