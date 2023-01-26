class AddImageToSpaceships < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceships, :image_url, :string
  end
end
