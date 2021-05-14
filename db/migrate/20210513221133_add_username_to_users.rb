class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true

    remove_column :users, :name
    remove_column :users, :email
  end
end
