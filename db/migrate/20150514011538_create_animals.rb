class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :string
      t.string :color
      t.string :size
      t.string :age

      t.timestamps null: false
    end
  end
end
