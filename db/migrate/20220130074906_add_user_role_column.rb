class AddUserRoleColumn < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :auth, :string, default: 'member'
  end
  def down
    remove_column :users, :auth
  end
end
