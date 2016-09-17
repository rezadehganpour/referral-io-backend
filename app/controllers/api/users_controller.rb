module Api
  class UsersController < ApplicationController
    def index
      render json:{message: 'Hello'}
    end
  end
end
