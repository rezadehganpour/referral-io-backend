class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users
  belongs_to :role
  validates :first_name, presence: {message: "User must provide a first name"}
  validates :last_name, presence: {message: "User must provide a last name"}
  validates :email, uniqueness: true, presence: {message: "User must provide an email"}
end
