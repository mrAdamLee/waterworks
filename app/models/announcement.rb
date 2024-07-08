class Announcement < ApplicationRecord
  belongs_to :user
  belongs_to :utility_district
  acts_as_tenant :utility_district
end
