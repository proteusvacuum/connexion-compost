class CreateComposters < ActiveRecord::Migration
  def change
    create_table :composters do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end