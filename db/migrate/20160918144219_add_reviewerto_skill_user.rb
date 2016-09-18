class AddReviewertoSkillUser < ActiveRecord::Migration
  def change
    add_column :skill_users, :reviewer_count, :integer
  end
end
