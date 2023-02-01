class RemoveColumnToDestinations < ActiveRecord::Migration[7.0]
  def change
    remove_column :destinations, :geocoding, :string
  end
end
