class AddDriverRefToDirts < ActiveRecord::Migration[5.0]
  def change
    remove_column :dirts, :driver_id, :integer
    add_reference :dirts, :driver, foreign_key: true
  end
end
