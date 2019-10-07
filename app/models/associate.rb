class Associate < ApplicationRecord
  validate :end_date_after_start_date?

 def end_date_after_start_date?
   if end_date < start_date
     errors.add :end_date, "end date must be after the start date"
     binding.pry
   end

  end
end
