class CreateUserPallets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pallets do |t|
      t.integer :user_id
      t.integer :pallet_id

      t.timestamps
    end
  end
end
