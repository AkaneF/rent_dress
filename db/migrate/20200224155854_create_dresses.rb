class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.integer :price
      t.string :category
      t.string :size

      t.timestamps
    end
  end
end
