class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :invoice

  # Add validations as necessary, for example:
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :payment_date, presence: true

  def amount_paid
    payments.sum(:amount)
  end

  # Method to check if the invoice is fully paid
  def fully_paid?
    amount_paid >= amount
  end
end
