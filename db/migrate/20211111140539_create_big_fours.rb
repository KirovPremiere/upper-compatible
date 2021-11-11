class CreateBigFours < ActiveRecord::Migration[5.2]
  def change
    create_table :big_fours do |t|
      t.string :name, default: "", null: false

      t.timestamps
    end
  end
end
