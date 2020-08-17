class AddImageToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :image_url
  end
end
