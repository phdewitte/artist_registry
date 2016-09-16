class Show < ActiveRecord::Base
  belongs_to :artist

  # Use Chronic gem for natural language date and time entry

  # Shows migration is currently rolled back
end