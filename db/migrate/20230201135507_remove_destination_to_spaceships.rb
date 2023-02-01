class RemoveDestinationToSpaceships < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :destination, :string
  end
end
