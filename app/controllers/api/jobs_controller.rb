module Api
  class JobsController < ActionController::Base
    def index
      @jobs = Job.all
    end
  end
end
