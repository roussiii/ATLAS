class AddDescriptionInSpaceships < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceships, :description, :string
  end
end
