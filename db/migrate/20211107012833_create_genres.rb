class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :big_four_id
      t.string :name, default: "", null: false

      t.timestamps
    end
  end
end
