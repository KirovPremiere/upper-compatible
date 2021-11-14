class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :image_id, default: "", null: false
      t.text :introduction, default: " ", null: false
      t.string :name, default: "", null: false

      t.timestamps
    end
  end
end
