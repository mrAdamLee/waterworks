class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :user, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true
      t.date :payment_date
      t.string :payment_method

      t.timestamps
    end
  end
end
