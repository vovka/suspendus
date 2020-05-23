class AddAddressToEstablishments < ActiveRecord::Migration[6.0]
  def change
    add_column :establishments, :address, :string
  end
end
