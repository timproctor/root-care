class AddColumnToDirts < ActiveRecord::Migration[5.0]
  def change
    add_column :dirts, :name, :string
  end
end
