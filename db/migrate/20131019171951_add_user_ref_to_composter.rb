class AddUserRefToComposter < ActiveRecord::Migration
  def change
    add_reference :composters, :user, index: true
  end
end
