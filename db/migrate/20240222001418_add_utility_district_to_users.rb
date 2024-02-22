class AddUtilityDistrictToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :utility_district, null: false, foreign_key: true
  end
end
