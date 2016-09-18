class SkillUser < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  belongs_to :level

  def increment_reviewer_count()
    count = reviewer_count+1
    update_attributes(reviewer_count: count)
  end
  def calculate_new_score(s)
   final_score = (s+score)/2
   if final_score.between?(0, 0.2)
     update_attributes(level: Level.find_by(name: "Novice"))
   elsif final_score.between?(0.2, 0.4)
     update_attributes(level: Level.find_by(name: "Beginner"))
   elsif final_score.between?(0.4, 0.6)
     update_attributes(level: Level.find_by(name: "Competent"))
   elsif final_score.between?(0.6, 0.8)
     update_attributes(level: Level.find_by(name: "Proficient"))
   elsif final_score.between?(0.8, 1.0)
     update_attributes(level: Level.find_by(name: "Expert"))
   end
   update_attributes(score: final_score)
  end
end
