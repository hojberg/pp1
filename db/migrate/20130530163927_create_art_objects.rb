class CreateArtObjects < ActiveRecord::Migration
  def change
    create_table :art_objects do |t|
      t.string :name
      t.integer :creator

      t.timestamps
    end
  end
end
