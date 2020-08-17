class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.date :date
      t.references :user
      t.string :category

      t.timestamps
    end
  end
end
