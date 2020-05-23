class ChangeUsersEstablishmentToEstablishmentRole < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.rename :establishment, :establishment_role
    end
  end
end
