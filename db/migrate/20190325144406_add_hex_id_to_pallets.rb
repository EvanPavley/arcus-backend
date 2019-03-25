class AddHexIdToPallets < ActiveRecord::Migration[5.2]
  def change
    add_column :pallets, :hex_id, :string
  end
end
