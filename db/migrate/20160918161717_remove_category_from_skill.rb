class RemoveCategoryFromSkill < ActiveRecord::Migration
  def change
    remove_column :skills, :category, :string
  end
end
