class Student < ApplicationRecord

  has_many :capstones
  has_many :educations
  has_many :experiences
  has_many :skills

  # validates :first_name, presence: true 
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :phone_number, presence: true
end


