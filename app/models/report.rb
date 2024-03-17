class Report < ApplicationRecord
  belongs_to :user 
  belongs_to :utility_district
end
