class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :amount_cents
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :establishment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
