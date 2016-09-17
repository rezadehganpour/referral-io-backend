module Api
  class UsersController <  ActionController::API
    def index
      render json: User.all
    end
    
    def create
      User.create(first_name: params['firstname'], last_name: params['lastname'],       email: params['email'], skills: params['skills']) 
      render json:{message: "A new user has been created successfully"}
    end
  end
end
