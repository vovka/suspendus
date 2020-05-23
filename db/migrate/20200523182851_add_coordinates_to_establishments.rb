class AddCoordinatesToEstablishments < ActiveRecord::Migration[6.0]
  def change
    change_table :establishments do |t|
      t.float :longitude
      t.float :latitude
    end
  end
end
