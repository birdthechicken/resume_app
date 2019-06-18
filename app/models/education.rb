class Education < ApplicationRecord

  belongs_to :student

  def formatted_start_date
    start_date.strftime("%B %e, %Y") 
  end

   def formatted_end_date
    end_date.strftime("%B %e, %Y") 
  end
  
end
