module Api
  class SkillsController < ActionController::Base
    def index
      @skills = Skill.all
    end
  end
end
