class AddColumnToSpaceships < ActiveRecord::Migration[7.0]
  def change
    change_column :spaceships, :availability, :boolean, default: true
  end
end
