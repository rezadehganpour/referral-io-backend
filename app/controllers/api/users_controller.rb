module Api
  class UsersController <  ActionController::Base
    skip_before_action :verify_authenticity_token
    def index
      @users = User.all
    end
    
    def create
      User.create(first_name: params['firstname'], last_name: params['lastname'], email: params['email'], skills: params['skills']) 
      render json:{message: "A new user has been created successfully"}
    end
    def show
      @user = User.find(params[:id])
    end
    def add_skill
      skills = params[:skills]
      user = User.find(params[:user_id])
      skills.each do |skill|
        s = Skill.find_by(name: skill[:name])
        score = get_score(skill[:level])
        user.skill_users.create(skill: s, level: Level.find_by(name: skill[:level]), score: score, reviewer_count: 0)
      end 
      render json:{message: "New skills has been added"}, status: 201
    end
    def get_score(level)
     if level == "Novice"
       return 0
     elsif level == "Beginner"
       return 0.21
     elsif level == "Competent"
       return 0.41
     elsif level == "Proficient"
       return 0.61
     elsif level == "Expert"
       return 0.81
     end 
    end
    def review
      reviewee = User.find(params[:reviewee_id])
      skills = params[:skills]
      skills.each do |skill|
        s = Skill.find_by(name: skill['name'])
        r_s = SkillUser.find_by(user_id: reviewee.id, skill_id: s.id)
        r_s.increment_reviewer_count()
        r_s.calculate_new_score(skill['score'])
      end
      render json: {message: "The review has been added"}, status: 201
    end
  end
end
