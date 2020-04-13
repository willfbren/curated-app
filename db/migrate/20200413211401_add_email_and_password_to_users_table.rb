class AddEmailAndPasswordToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :confirm_password, :string
  end
end
