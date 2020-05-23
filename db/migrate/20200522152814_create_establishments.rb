class CreateEstablishments < ActiveRecord::Migration[6.0]
  def change
    create_table :establishments do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :establishments, :users
  end
end
