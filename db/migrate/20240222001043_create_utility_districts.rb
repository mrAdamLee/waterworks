class CreateUtilityDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :utility_districts do |t|
      t.string :name

      t.timestamps
    end
  end
end
