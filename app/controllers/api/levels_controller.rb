module Api
  class LevelsController < ActionController::Base
    def index
      @levels = Level.all
    end
  end
end
