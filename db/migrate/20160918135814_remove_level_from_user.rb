class RemoveLevelFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :level_id, :integer
  end
end
