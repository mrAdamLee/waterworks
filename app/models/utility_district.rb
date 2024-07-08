class UtilityDistrict < ApplicationRecord
  acts_as_tenant
  has_many :users
  has_many :invoices
  has_many :reports
  has_many :announcements
end
