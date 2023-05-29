class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.integer :daily_price
      t.string :title
      t.string :description
      t.string :category
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
