class AddUtilityDistrictToInvoices < ActiveRecord::Migration[7.0]
  def change
    add_reference :invoices, :utility_district, null: false, foreign_key: true
  end
end
