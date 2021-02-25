class AddPresampleToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :presample, :string
  end
end
