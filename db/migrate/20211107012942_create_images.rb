class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string :image_id, default: "", null: false

      t.timestamps
    end
  end
end
