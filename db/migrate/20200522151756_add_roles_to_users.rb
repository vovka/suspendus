class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :superadmin_role, :boolean
    add_column :users, :establishment, :boolean
  end
end
