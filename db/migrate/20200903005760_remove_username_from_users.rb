class RemoveUsernameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :username, :text
  end
end
