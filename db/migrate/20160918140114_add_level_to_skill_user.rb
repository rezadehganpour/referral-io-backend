class AddLevelToSkillUser < ActiveRecord::Migration
  def change
    add_column :skill_users, :level_id, :integer
  end
end
