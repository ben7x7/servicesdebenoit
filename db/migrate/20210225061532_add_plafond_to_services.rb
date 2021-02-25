class AddPlafondToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :plafond, :string
  end
end
