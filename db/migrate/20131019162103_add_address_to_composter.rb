class AddAddressToComposter < ActiveRecord::Migration
  def change
    add_column :composters, :address, :string
  end
end
