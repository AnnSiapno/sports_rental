class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :owner_id, foreign_key: {to_table: :users}
      t.string :title
      t.decimal :price
      t.text :description
      t.float :longitude
      t.float :latitude
      t.string :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
