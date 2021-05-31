class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :shop, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
