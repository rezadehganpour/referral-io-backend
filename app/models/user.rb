class User < ActiveRecord::Base
  belongs_to :role
  validates :first_name, presence: {message: "User must provide a first name"}
  validates :last_name, presence: {message: "User must provide a last name"}
  validates :email, uniqueness: true, presence: {message: "User must provide an email"}
end
