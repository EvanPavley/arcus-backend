class CreatePallets < ActiveRecord::Migration[5.2]
  def change
    create_table :pallets do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five

      t.timestamps
    end
  end
end
