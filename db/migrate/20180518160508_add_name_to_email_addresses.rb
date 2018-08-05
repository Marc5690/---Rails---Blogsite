class AddNameToEmailAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :email_addresses, :name, :string
  end
end
