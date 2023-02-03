class RemoveBannerToSpaceships < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :banner_url, :string
  end
end
