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
  end
end
