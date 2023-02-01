class AddDescriptionToSpaceships < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceships, :destination, :string
  end
end
