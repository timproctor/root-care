class DeleteColumnToDirts < ActiveRecord::Migration[5.0]
  def change
    remove_column :dirts, :name
  end
end
