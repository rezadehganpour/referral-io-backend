class SkillUser < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  belongs_to :level
end
