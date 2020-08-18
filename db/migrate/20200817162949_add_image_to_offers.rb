class AddImageToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :image, :string
  end
end
