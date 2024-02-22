class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount
      t.text :description
      t.date :due_date
      t.string :status

      t.timestamps
    end
  end
end
