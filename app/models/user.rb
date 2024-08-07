class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_tenant :utility_district
  enum role: { customer: 0, admin: 1, other_role: 2 }
  
  belongs_to :utility_district
  has_many :invoices
  has_many :payments 
  has_many :reports
  has_many :forms
  has_many :announcements
  # Automatically assign a default role to new users
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :customer
  end
end
