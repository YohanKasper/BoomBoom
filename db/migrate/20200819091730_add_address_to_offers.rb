class AddAddressToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :address, :string
  end
end
