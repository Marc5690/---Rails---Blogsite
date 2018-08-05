class FixTitleColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :Title, :title
  end
end
