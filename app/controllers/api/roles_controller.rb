module Api
  class RolesController < ActionController::API
    def index
      render json: Role.all
    end
  end
end
