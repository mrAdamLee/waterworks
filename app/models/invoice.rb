class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :utility_district

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :due_date, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending paid overdue] }
end
