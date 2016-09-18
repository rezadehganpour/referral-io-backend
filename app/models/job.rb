class Job < ActiveRecord::Base

  def match?(user)
    user.skills.each do |u_s|
      return true unless skills[u_s.name].nil?
    end
    return false
  end
end
