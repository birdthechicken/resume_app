class Experience < ApplicationRecord
  belongs_to :student

  validates :start_date, presence: true
  validates :end_date, presence: true


  def formatted_start_date
    start_date.strftime("%B %e, %Y").gsub("  ", " ")  
  end

  def formatted_end_date
    end_date.strftime("%B %e, %Y").gsub("  ", " ") 
  end
  
end
