class RemoveSkillFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :skills, :json
  end
end
