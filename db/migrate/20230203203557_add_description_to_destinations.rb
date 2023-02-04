class AddDescriptionToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :description, :string
  end
end
