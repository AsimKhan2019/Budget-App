class CreateCategoryAndPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :category_and_payments do |t|
      t.references :category, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
