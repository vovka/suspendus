class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :price_cents
      t.belongs_to :establishment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
