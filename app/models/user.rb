class User < ActiveRecord::Base
  validates :first_name, presence: {message: "User must provide a first name"}
end
