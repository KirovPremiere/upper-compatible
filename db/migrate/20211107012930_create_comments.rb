class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :item_id
      t.integer :customer_id
      t.string :place, default: "", null: false
      t.text :opinion, null: false
      t.string :image_id, default: "", null: false
      t.integer :price, null: false
      t.integer :point, null: false

      t.timestamps
    end
  end
end
