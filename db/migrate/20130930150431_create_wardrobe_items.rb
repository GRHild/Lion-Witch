class CreateWardrobeItems < ActiveRecord::Migration
  def change
    create_table :wardrobe_items do |t|
      t.string :garment
      t.string :label
      t.string :string
      t.string :season
      t.string :color
      t.string :string

      t.timestamps
    end
  end
end
