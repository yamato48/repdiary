class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :memo
      t.integer :fece
      t.integer :clean
      t.integer :handling
      t.integer :shed
      t.integer :bath
      t.float :tall
      t.float :weight
      t.datetime :day, null: false, unique: true
      t.references :reptile, foreign_key: true

      t.timestamps
    end
  end
end
