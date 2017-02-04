class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.date :daterelease
      t.integer :category

      t.timestamps
    end
  end
end
