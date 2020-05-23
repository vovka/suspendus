class AddTypeToTransactions < ActiveRecord::Migration[6.0]
  def change
    change_table :transactions do |t|
      t.column :type, :string
    end
  end
end
