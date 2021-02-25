class AddOptionToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :option, :string
  end
end
