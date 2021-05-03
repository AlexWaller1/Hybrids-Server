class CreateHybrids < ActiveRecord::Migration[6.1]
  def change
    create_table :hybrids do |t|
      t.string :name
      t.string :species
      t.string :origin
      t.string :personality
      t.string :image

      t.timestamps
    end
  end
end
