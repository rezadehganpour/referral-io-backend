module Api
  class CategoriesController < ActionController::Base
    def index 
      @categories = Category.all
    end
  end
end
