class CreateRobots < ActiveRecord::Migration[6.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.string :purpose
      t.string :image

      t.timestamps
    end
  end
end
