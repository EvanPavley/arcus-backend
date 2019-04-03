class AddColorRelationshipsToPallets < ActiveRecord::Migration[5.2]
  def change
    add_column :pallets, :color_relationships, :string
  end
end
