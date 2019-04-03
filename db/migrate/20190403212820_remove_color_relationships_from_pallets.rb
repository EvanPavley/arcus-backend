class RemoveColorRelationshipsFromPallets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pallets, :color_relationships
  end
end
