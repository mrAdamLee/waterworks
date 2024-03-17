class UtilityDistrict < ApplicationRecord
  has_many :users
  has_many :invoices
  has_many :reports
end
