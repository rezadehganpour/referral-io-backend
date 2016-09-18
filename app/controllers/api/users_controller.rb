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
    def review
      reviewee = User.find(params[:review_id])
      skills = params[:skills]
      skills.each do |skill|
        binding.pry
        s = Skill.find_by(name: skill['name'])
        r_s = SkillUser.find_by(user_id: reviewee.id, skill_id: s.id)
        r_s.increment_reviewer_count()
        r_s.calculate_new_score(skill['score'])
      end
      render json: {message: "The review has been added"}, status: 201
    end
  end
end
