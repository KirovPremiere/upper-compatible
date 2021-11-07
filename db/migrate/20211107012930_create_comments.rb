class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :item_id
      t.text :opinion, default: "", null: false
      t.integer :price, null: false
      t.integer :point, null: false

      t.timestamps
    end
  end
end
