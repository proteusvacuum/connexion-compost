class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :usertype
      t.string :notes

      t.timestamps
    end
  end
end
