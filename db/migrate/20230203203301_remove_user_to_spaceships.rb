class RemoveUserToSpaceships < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :user_id, :integer
  end
end
