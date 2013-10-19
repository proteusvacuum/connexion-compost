class AddEmailAndPostcodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :postcode, :string
  end
end
