class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :sample
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
