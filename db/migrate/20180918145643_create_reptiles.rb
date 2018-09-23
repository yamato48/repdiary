class CreateReptiles < ActiveRecord::Migration[5.2]
  def change
    create_table :reptiles do |t|
      t.string :name, null: false
      t.datetime :birthday
      t.datetime :comeday
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
