class AddTitleToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :Title, :string
  end
end
