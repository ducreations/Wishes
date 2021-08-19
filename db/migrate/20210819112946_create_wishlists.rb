class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
