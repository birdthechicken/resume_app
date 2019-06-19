class Skill < ApplicationRecord

  belongs_to :student
  validates :student_id, presence: true
  validates :skill_name, presence: true
end
