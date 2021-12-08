class AddInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :telephone, :string
    add_column :users, :address, :string
  end
end
