class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
