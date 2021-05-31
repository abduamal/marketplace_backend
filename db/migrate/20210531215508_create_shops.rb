class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :industry

      t.timestamps
    end
  end
end
