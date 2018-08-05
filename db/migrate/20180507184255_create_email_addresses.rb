class CreateEmailAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :email_addresses do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
