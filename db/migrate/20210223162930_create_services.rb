class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :fullname
      t.string :logo
      t.string :image
      t.text :definition
      t.text :conditions

      t.timestamps
    end
  end
end
