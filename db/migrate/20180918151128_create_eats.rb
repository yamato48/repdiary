class CreateEats < ActiveRecord::Migration[5.2]
  def change
    create_table :eats do |t|
      t.integer :worm
      t.integer :cricket
      t.integer :redroach
      t.integer :dubia
      t.integer :mouse
      t.integer :artifical
      t.integer :vegetable
      t.integer :fruit
      t.integer :bird
      t.integer :egg
      t.integer :other
      t.references :record, foreign_key: true

      t.timestamps
    end
  end
end
